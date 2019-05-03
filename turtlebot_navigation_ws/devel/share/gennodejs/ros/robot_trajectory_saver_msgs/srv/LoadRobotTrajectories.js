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

class LoadRobotTrajectoriesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_path = null;
    }
    else {
      if (initObj.hasOwnProperty('file_path')) {
        this.file_path = initObj.file_path
      }
      else {
        this.file_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadRobotTrajectoriesRequest
    // Serialize message field [file_path]
    bufferOffset = _serializer.string(obj.file_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadRobotTrajectoriesRequest
    let len;
    let data = new LoadRobotTrajectoriesRequest(null);
    // Deserialize message field [file_path]
    data.file_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_path.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_trajectory_saver_msgs/LoadRobotTrajectoriesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1f82596372c52a517e1fe32d1e998e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string file_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadRobotTrajectoriesRequest(null);
    if (msg.file_path !== undefined) {
      resolved.file_path = msg.file_path;
    }
    else {
      resolved.file_path = ''
    }

    return resolved;
    }
};

class LoadRobotTrajectoriesResponse {
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
    // Serializes a message object of type LoadRobotTrajectoriesResponse
    // Serialize message field [trajectories]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.trajectories, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadRobotTrajectoriesResponse
    let len;
    let data = new LoadRobotTrajectoriesResponse(null);
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
    return 'robot_trajectory_saver_msgs/LoadRobotTrajectoriesResponse';
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
    const resolved = new LoadRobotTrajectoriesResponse(null);
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
  Request: LoadRobotTrajectoriesRequest,
  Response: LoadRobotTrajectoriesResponse,
  md5sum() { return '9c54a0ae5f11617005a96802ab4d5ff0'; },
  datatype() { return 'robot_trajectory_saver_msgs/LoadRobotTrajectories'; }
};
