// Auto-generated. Do not edit!

// (in-package exploration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ExplorationRobotMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_id = null;
      this.action = null;
      this.goal = null;
      this.path = null;
      this.path_cost = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.Point();
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
    // Serializes a message object of type ExplorationRobotMessage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.uint8(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.path, buffer, bufferOffset);
    // Serialize message field [path_cost]
    bufferOffset = _serializer.float64(obj.path_cost, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExplorationRobotMessage
    let len;
    let data = new ExplorationRobotMessage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_cost]
    data.path_cost = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += nav_msgs.msg.Path.getMessageSize(object.path);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exploration_msgs/ExplorationRobotMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a509b66d9d7a094b27f193e7e66af9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 kReached   = 0
    uint8 kPlanned   = 1  
    uint8 kSelected  = 2 
    uint8 kAborted   = 3
    
    std_msgs/Header header
    uint8 robot_id                   # robot id
    uint8 action			 # action
    geometry_msgs/Point goal         # the goal
    nav_msgs/Path path               # the computed path  
    float64 path_cost	         # cost of the planned path: "< 0" means invalid
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    const resolved = new ExplorationRobotMessage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.Point.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.Point()
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

// Constants for message
ExplorationRobotMessage.Constants = {
  KREACHED: 0,
  KPLANNED: 1,
  KSELECTED: 2,
  KABORTED: 3,
}

module.exports = ExplorationRobotMessage;
