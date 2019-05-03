// Auto-generated. Do not edit!

// (in-package trajectory_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class PathPlanningRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPlanningRequest
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPlanningRequest
    let len;
    let data = new PathPlanningRequest(null);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.start);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'trajectory_control_msgs/PathPlanningRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fe3126bd5b2d56edd5005220333d4fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped start
    geometry_msgs/PoseStamped goal
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new PathPlanningRequest(null);
    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.PoseStamped.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.PoseStamped.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class PathPlanningResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.path = null;
      this.path_cost = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('path_cost')) {
        this.path_cost = initObj.path_cost
      }
      else {
        this.path_cost = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPlanningResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.path, buffer, bufferOffset);
    // Serialize message field [path_cost]
    bufferOffset = _serializer.float64(obj.path_cost, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPlanningResponse
    let len;
    let data = new PathPlanningResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_cost]
    data.path_cost = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.path);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'trajectory_control_msgs/PathPlanningResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9fbdaf79532fff8047bcc60a4b7536e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    nav_msgs/Path path
    float64 path_cost
    
    
    
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
    const resolved = new PathPlanningResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.path !== undefined) {
      resolved.path = nav_msgs.msg.Path.Resolve(msg.path)
    }
    else {
      resolved.path = new nav_msgs.msg.Path()
    }

    if (msg.path_cost !== undefined) {
      resolved.path_cost = msg.path_cost;
    }
    else {
      resolved.path_cost = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: PathPlanningRequest,
  Response: PathPlanningResponse,
  md5sum() { return '249cbd5d21a9bf348c5b7b36bffd0e9e'; },
  datatype() { return 'trajectory_control_msgs/PathPlanning'; }
};
