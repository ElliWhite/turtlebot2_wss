#include "QueuePathPlanner.h"

void QueuePathPlanner::taskTimerCallback(const ros::TimerEvent& timer_msg)
{
    std::cout << "QueuePathPlanner::taskTimerCallback()" << std::endl;

    // test if the controller is ready to handle a new planning task
    if (!controller_ready_flag_)
    {
#ifdef VERBOSE
        ROS_INFO("controller is busy, tasks status not updated");
#endif

        // if not ready stop timer and return form the callback
        /// < task_timer_.stop();
        return;
    }

    /// < the controller is ready and we can manage a new task 

    boost::recursive_mutex::scoped_lock locker(task_queue_mutex_);

    // update tasks status
    while (!task_queue_.empty())
    {
        // retrieve first task
        TaskPtr p_task = task_queue_.front();

        // data initialization
        int num_failures = 0;
        int num_planning = 0;
        int num_successes = 0;
        int segment_count = (*p_task)[0]->segment_task.segment_count;
        std::string name = (*p_task)[0]->segment_task.name.c_str();

        // path message
        nav_msgs::Path path_msg;
        path_msg.header.stamp = ros::Time::now();
        path_msg.header.frame_id = reference_frame_;

        // global path message    
        trajectory_control_msgs::PlanningGlobalPath global_path_msg;
        //    std_msgs/Header header
        //    string name
        //    int32 task_id
        //    geometry_msgs/Point[] waypoints  
        //    nav_msgs/Path path
        global_path_msg.header.stamp = path_msg.header.stamp;
        global_path_msg.header.frame_id = reference_frame_;
        global_path_msg.type = p_task->type; 

        // check the task status
        for (size_t i = 0; p_task->size() > i; i++)
        {
            TaskSegmentPtr p_segment = (*p_task)[i];

            // lock the segment 
            boost::recursive_mutex::scoped_lock locker(p_segment->mutex);

            boost::recursive_mutex::scoped_lock locker_status(p_segment->status_mutex);
            //segment->status_mutex.lock();
            {
                switch (p_segment->status)
                {
                case STATUS_FAILURE: num_failures++;
                    break;
                case STATUS_PLANNING: num_planning++;
                    break;
                case STATUS_SUCCESS: num_successes++;
                    break;
                }
            }
            //segment->status_mutex.unlock();
        }

        /// < if all segments have been computed, then
        if (num_successes == segment_count)
        {
            // the planner successfully solved the task => remove task from the queue (do not worry we are removing a pointer from the list and we have already a smart copy of that)
            task_queue_.pop_front();

            // for each segment of the task,
            for (size_t i = 0; i < p_task->size(); i++)
            {
                TaskSegmentPtr p_segment = (*p_task)[i];

                // lock the segment 
                boost::recursive_mutex::scoped_lock locker(p_segment->mutex);

                if(i == 0)  global_path_msg.waypoints.push_back(p_segment->segment_task.waypoints[0]); // push in the starting point 
                global_path_msg.waypoints.push_back(p_segment->segment_task.waypoints[1]); // then just the end point of each segment 

                // join the planning thread
                p_segment->thread.join();

                // append poses to the complete path
                path_msg.poses.insert(path_msg.poses.end(), p_segment->path.poses.begin(), p_segment->path.poses.end());

                // delete the task's segment
                // (this line should not be commented but there is an
                // estrange issue related to a 'double free error'
                // with the pcl::KdTreeFLANN objects, so to avoid
                // the crash of the planner, we allow some memory leaks) 
                //delete segment;
            }

            global_path_msg.path = path_msg;

            // unset the feedback flag (controller will be busy for a while)
            controller_ready_flag_ = false;

            /// < advertise the task's path
            {
                boost::recursive_mutex::scoped_lock locker(task_path_pub_mutex_);
                task_path_pub_.publish(path_msg);
            }
            
            /// < advertise global path 
            task_global_path_pub_.publish(global_path_msg); 

            /// < advertise feedback to the waypoints tool
            trajectory_control_msgs::PlanningFeedback feedback_msg;
            feedback_msg.header = path_msg.header;
            feedback_msg.node = "planner";
            feedback_msg.task = name;
            feedback_msg.status = STATUS_SUCCESS;
            task_feedback_pub_.publish(feedback_msg);

            // status information
#ifdef VERBOSE
            ROS_INFO("%s published", name.c_str());
#endif

            // return from the callback
            return; /// < EXIT POINT 
        }

        // if at least one segment has not been already
        // planned and there's no failure until now, then
        if ((num_planning > 0) && (num_failures == 0))
        {
            // status information
#ifdef VERBOSE
            ROS_INFO("%s not ready", name.c_str());
#endif

            // wait for the next timer interrupt
            return; /// < EXIT POINT 
        }

        // at this point we have at least one failure
        if (num_failures > 0)
        {
            // remove task from the queue
            task_queue_.pop_front();

            // for each segment of the task,
            for (size_t i = 0; p_task->size() > i; i++)
            {
                TaskSegmentPtr p_segment = (*p_task)[i];

                // lock the segment 
                boost::recursive_mutex::scoped_lock locker(p_segment->mutex);

                // join the planning thread
                p_segment->thread.join();

                // delete the task's segment
                // (this line should not be commented but there is an
                // estrange issue related to a 'double free error'
                // with the pcl::KdTreeFLANN objects, so to avoid
                // the crash of the planner, we allow some memory leaks) 
                //delete segment;
            }

            // advertise feedback to the waypoints tool
            trajectory_control_msgs::PlanningFeedback feedback_msg;
            feedback_msg.header = path_msg.header;
            feedback_msg.node = "planner";
            feedback_msg.task = name;
            feedback_msg.status = STATUS_FAILURE;
            task_feedback_pub_.publish(feedback_msg);

            // status information
            ROS_WARN("%s removed (by failure)", name.c_str());

            // loop to the next task
            continue;
        }
        //        else
        //        {
        //            ROS_ERROR("QueuePathPlanner::taskTimerCallback() - ERROR - %s strange case",name.c_str());
        //            std::cout << "QueuePathPlanner::taskTimerCallback() - ERROR " << std::endl;
        //            exit(-1);
        //        }

    }
}
