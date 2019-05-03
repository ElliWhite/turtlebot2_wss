// Auto-generated. Do not edit!

// (in-package robot_trajectory_saver_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class GetRobotTrajectoriesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRobotTrajectoriesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotTrajectoriesRequest
    let len;
    let data = new GetRobotTrajectoriesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_trajectory_saver_msgs/GetRobotTrajectoriesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRobotTrajectoriesRequest(null);
    return resolved;
    }
};

class GetRobotTrajectoriesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectories = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectories')) {
        this.trajectories = initObj.trajectories
      }
      else {
        this.trajectories = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRobotTrajectoriesResponse
    // Serialize message field [trajectories]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.trajectories, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotTrajectoriesResponse
    let len;
    let data = new GetRobotTrajectoriesResponse(null);
    // Deserialize message field [trajectories]
    data.trajectories = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.trajectories);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_trajectory_saver_msgs/GetRobotTrajectoriesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b30a4d113ef58da0a023a56d68b5488';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path trajectories
    
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRobotTrajectoriesResponse(null);
    if (msg.trajectories !== undefined) {
      resolved.trajectories = nav_msgs.msg.Path.Resolve(msg.trajectories)
    }
    else {
      resolved.trajectories = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRobotTrajectoriesRequest,
  Response: GetRobotTrajectoriesResponse,
  md5sum() { return '8b30a4d113ef58da0a023a56d68b5488'; },
  datatype() { return 'robot_trajectory_saver_msgs/GetRobotTrajectories'; }
};
