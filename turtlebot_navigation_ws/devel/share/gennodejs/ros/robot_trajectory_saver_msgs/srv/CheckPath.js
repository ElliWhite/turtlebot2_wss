// Auto-generated. Do not edit!

// (in-package robot_trajectory_saver_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CheckPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point_of_interest = null;
      this.source_node_id = null;
      this.destination_node_id = null;
    }
    else {
      if (initObj.hasOwnProperty('point_of_interest')) {
        this.point_of_interest = initObj.point_of_interest
      }
      else {
        this.point_of_interest = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('source_node_id')) {
        this.source_node_id = initObj.source_node_id
      }
      else {
        this.source_node_id = 0;
      }
      if (initObj.hasOwnProperty('destination_node_id')) {
        this.destination_node_id = initObj.destination_node_id
      }
      else {
        this.destination_node_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckPathRequest
    // Serialize message field [point_of_interest]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.point_of_interest, buffer, bufferOffset);
    // Serialize message field [source_node_id]
    bufferOffset = _serializer.uint64(obj.source_node_id, buffer, bufferOffset);
    // Serialize message field [destination_node_id]
    bufferOffset = _serializer.uint64(obj.destination_node_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckPathRequest
    let len;
    let data = new CheckPathRequest(null);
    // Deserialize message field [point_of_interest]
    data.point_of_interest = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [source_node_id]
    data.source_node_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [destination_node_id]
    data.destination_node_id = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.point_of_interest);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_trajectory_saver_msgs/CheckPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd94bb2376fdc687778c0ed6dab04fb7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path point_of_interest
    uint64 source_node_id
    uint64 destination_node_id
    
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
    const resolved = new CheckPathRequest(null);
    if (msg.point_of_interest !== undefined) {
      resolved.point_of_interest = nav_msgs.msg.Path.Resolve(msg.point_of_interest)
    }
    else {
      resolved.point_of_interest = new nav_msgs.msg.Path()
    }

    if (msg.source_node_id !== undefined) {
      resolved.source_node_id = msg.source_node_id;
    }
    else {
      resolved.source_node_id = 0
    }

    if (msg.destination_node_id !== undefined) {
      resolved.destination_node_id = msg.destination_node_id;
    }
    else {
      resolved.destination_node_id = 0
    }

    return resolved;
    }
};

class CheckPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.path_cost = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('path_cost')) {
        this.path_cost = initObj.path_cost
      }
      else {
        this.path_cost = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckPathResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [path_cost]
    bufferOffset = _serializer.uint64(obj.path_cost, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckPathResponse
    let len;
    let data = new CheckPathResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [path_cost]
    data.path_cost = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_trajectory_saver_msgs/CheckPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d54d1641c8518087a34027dc5676a7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    uint64 path_cost
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckPathResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.path_cost !== undefined) {
      resolved.path_cost = msg.path_cost;
    }
    else {
      resolved.path_cost = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckPathRequest,
  Response: CheckPathResponse,
  md5sum() { return 'df614bdf15b72df4d907293da55a23e0'; },
  datatype() { return 'robot_trajectory_saver_msgs/CheckPath'; }
};
