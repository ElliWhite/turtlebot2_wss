#ifndef TRAV_ANAL_H_
#define TRAV_ANAL_H_

#include <cmath>
#include <vector>
#include <set>

#include <boost/shared_ptr.hpp>
#include <boost/thread/recursive_mutex.hpp>

#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseArray.h>

#include <nav_msgs/Path.h>
#include <sensor_msgs/PointCloud2.h>

#include <pcl/kdtree/kdtree_flann.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/segmentation/conditional_euclidean_clustering.h>

#include <trajectory_control_msgs/MultiRobotPath.h>
#include <trajectory_control_msgs/MultiRobotPose.h>

#include <TravAnalyzerConfig.h>

#include "ClusterPcl.h"
#include "Transform.h"
#include "KdTreeFLANN.h"


static const int kMaxNumberOfRobots = 16; 


///	\class TravAnalyzer
///	\author Alcor
///	\brief A class for implementing traversability analysis 
///	\note 
/// 	\todo Move all the numerical constants into static class parameters 
///	\date
///	\warning
class TravAnalyzer
{
public:
    
    static const float kRobotRadius;  // [m] robot radius for computing the clearance   
    static const float kRobotRadiusSquared;  // [m^2] robot radius squared for computing the clearance   
    static const float kClearanceCollisionValue; // value of the clearance when robot the robot is in collision 
    static const float kClearanceDoCareRange; // [m] value of the maximum clearance for which robot cares in computing clearance cost
    static const float kClearanceDoCareRangeSquared;
    static const float kRobotToAvoidRadius;  // [m] robot radius for computing the clearance   
    static const float kRobotToAvoidRadiusSquared;  // [m] squared kRobotToAvoidRadius
    static const float kPathToAvoidCropDist; // [m] crop distance for the path of the robot to avoid
    static const float kPathToAvoidCropDist2; // [m] squared kPathToAvoidCropDist
    static const float kPathToAvoidResolution; // [m] resolution of the path to avoid
    static const float kPathToAvoidResolution2; // [m] squared kPathToAvoidResolution
    static const float kTraversabilityMaxCost; // max cost for a traversability point 
    
    static const float kClearanceLambda; // 
    static const float kNeighborhoodDeltaZ; // [m]
    
    static const float kRobotZOffset; // [m] how much each point is pushed higher from the map in the robot direction (TODO: we should use here local normals!) 
    
    static const double kObstPclResetTime; // [s] if elapsed time from last obst pcl check is > kObstPclResetTime then obst_pcl is not used anymore
    static const double kTeammatePositionResetTime; // [s]
    static const double kTeammatePathResetTime; // [s]
    
    typedef pcl::PointXYZI PointOutI;
    typedef pcl::PointCloud<PointOutI> PointCloudI;
    typedef pp::KdTreeFLANN<PointOutI> KdTreeInI;
   

public:
    
    TravAnalyzer();
    ~TravAnalyzer();
    
    void setInput(std::vector<int>& clusters_info, pcl::PointCloud<pcl::PointXYZRGBNormal>& wall_pcl, pcl::PointCloud<pcl::PointXYZRGBNormal>& input_pcl);

    void computeTrav(PointCloudI& traversabilty_pcl);
        
public: /// < setters     

    inline void setConfig(TravAnalyzerConfig& new_config)
    {
        config_ = new_config;
    }
    
    void initTransformListener()
    {
        p_transform_teammate_.reset(new Transform());
    }

    // enable/disable robot to avoid 
    void setEnableOtherRobotAvoidance(bool val) {b_enable_team_avoidance_ = val; }
    
    void setOtherRobotPathToAvoid(const nav_msgs::Path& path);
    void setRobotToAvoidPosition(const geometry_msgs::TransformStamped& msg);
        
    void setObstPcl(const sensor_msgs::PointCloud2& obst_pcl_msg);
        
    void setNumberOfRobots(const int num) { number_of_robots_ = std::min(num,kMaxNumberOfRobots); } 
    
    void setRobotName(const std::string& name) { str_robot_name_ = name; }
    void setRobotId(const int id) {robot_id_ = id; }
    
    void setMultiRobotPose(const trajectory_control_msgs::MultiRobotPose& msg);
    void setMultiRobotPath(const trajectory_control_msgs::MultiRobotPath& msg);
    
    void setTeammateBaseFrame(const std::string& frame, int id) { teammate_base_link_frame_[id] = frame; } 

public: /// < getters 
    
    void getPcl(PointCloudI& clearence_pcl, PointCloudI& density_pcl, PointCloudI& label_pcl, PointCloudI& roughnes_pcl);
        
    inline TravAnalyzerConfig getConfig()
    {
        return config_;
    }
    
    nav_msgs::Path& getTeammatePath(int id) 
    {
        boost::recursive_mutex::scoped_lock wall_locker(teammate_path_mutex_[id]); 
        return teammate_path_[id];
    }
    
protected:
    
    template<class Point1, class Point2>
    static double distSquared(const Point1& p1, const Point2& p2);
    
    void downsampleTeamPaths();
    
    double computeDistSquaredFromPath(const int point_index, const double safety_radius); 
    
    bool updateTeammatePositions(); 
    bool updateTeammatePositionsFromTransform(); 
    
    void checkObstPclUpdate(); 
    
    void buildFutureTrailsPcl(); 
    
protected: // sub-methods for computing traversability contributions 
    
    double computeRough(int point_index, pcl::PointCloud<pcl::PointXYZRGBNormal>& nh);
    inline double computeDensity(int point_index, pcl::PointCloud<pcl::PointXYZRGBNormal>& nh);
    inline double computeDensity(int point_index, pcl::PointCloud<pcl::PointXYZRGBNormal>& nh, double pow_config_leaf_size_3, double volume_local_sphere);
    inline double computePlanarDensity(int point_index, pcl::PointCloud<pcl::PointXYZRGBNormal>& nh, double pow_config_leaf_size_3, double volume_local_sphere);
        
    double computeClearance(int point_index);
    double computeLabel(int point_index);
    
    void downSamplePath(const nav_msgs::Path& in, const PointOutI& start_point, nav_msgs::Path& out); 
    void addPathToPcl(const nav_msgs::Path& in, pcl::PointCloud<pcl::PointXYZRGBNormal>& point_cloud);
    
protected: 

    TravAnalyzerConfig config_;
        
    std::vector<int> clusters_info_;
    
    boost::recursive_mutex input_pcl_mutex_;
    pcl::PointCloud<pcl::PointXYZRGBNormal> wall_pcl_;
    pcl::PointCloud<pcl::PointXYZRGBNormal> noWall_pcl_;
    
    PointCloudI traversabilty_pcl_, density_pcl_, clearence_pcl_, label_pcl_, roughness_pcl_;

    pp::KdTreeFLANN<pcl::PointXYZRGBNormal> wall_kdtree_;
    pp::KdTreeFLANN<pcl::PointXYZRGBNormal> noWall_kdtree_; 
    
    bool b_ready_; // ready to compute 
    bool b_empty_wall_; 
    
    bool b_enable_team_avoidance_; // true if we must avoid robot teammates
    volatile bool b_updated_teammate_positions_;
    volatile bool b_updated_teammate_position_[kMaxNumberOfRobots];  
    volatile bool b_updated_teammate_position_from_msg_[kMaxNumberOfRobots];
    boost::shared_ptr<Transform> p_transform_teammate_;
    
    boost::recursive_mutex teammate_position_mutex_[kMaxNumberOfRobots];
    PointOutI teammate_position_[kMaxNumberOfRobots];
    ros::Time teammate_pos_last_time_[kMaxNumberOfRobots]; // time the last position msg was received 
    
    boost::recursive_mutex teammate_path_mutex_[kMaxNumberOfRobots];
    nav_msgs::Path teammate_path_[kMaxNumberOfRobots]; 
    bool b_teammate_path_downsampled_[kMaxNumberOfRobots];
    ros::Time teammate_path_last_time_[kMaxNumberOfRobots]; // time the last path msg was received 
    
    boost::recursive_mutex obst_pcl_mutex_;
    volatile bool b_set_ost_pcl_;  
    pcl::PointCloud<pcl::PointXYZRGBNormal> obst_pcl_;
    pp::KdTreeFLANN<pcl::PointXYZRGBNormal> obst_pcl_kdtree_;
    ros::Time obst_pcl_last_time_; // time the last laser proximity msg was received 
    double obst_plc_radius_;
    Eigen::Vector4f obst_plc_centroid_;
    
    boost::recursive_mutex team_future_trails_pcl_mutex_;
    volatile bool b_set_team_future_trails_pcl_;  
    pcl::PointCloud<pcl::PointXYZRGBNormal> future_trails_pcl_;
    pp::KdTreeFLANN<pcl::PointXYZRGBNormal> future_trails_pcl_kdtree_;
    
    std::string str_robot_name_;
    int robot_id_;
    int number_of_robots_; 
    
    std::string map_frame_; 
    std::string teammate_base_link_frame_[kMaxNumberOfRobots]; 
};

template<class Point1, class Point2>
inline double TravAnalyzer::distSquared(const Point1& p1, const Point2& p2)
{
    return pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2) + pow(p1.z - p2.z, 2);
}

inline double point_plane_distance(pcl::PointXYZRGBNormal& p, pcl::ModelCoefficients& coefficients)
{
    double num = abs(p.x * coefficients.values[0] + p.y * coefficients.values[1] + p.z * coefficients.values[2] + coefficients.values[3]);
    double den = sqrt(pow(coefficients.values[0], 2) + pow(coefficients.values[1], 2) + pow(coefficients.values[2], 2));
    return num / den;
}

inline double point_point_distance(pcl::PointXYZRGBNormal p1, pcl::PointXYZRGBNormal p2)
{
    return sqrt(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2) + pow(p1.z - p2.z, 2));
}

#endif // TRAV_ANAL_H_
