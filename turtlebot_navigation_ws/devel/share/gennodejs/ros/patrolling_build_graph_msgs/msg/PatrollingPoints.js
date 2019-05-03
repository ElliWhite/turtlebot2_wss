// Auto-generated. Do not edit!

// (in-package patrolling_build_graph_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PatrollingPoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.num_nodes = null;
      this.node_id = null;
      this.node_position = null;
      this.node_priority = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('num_nodes')) {
        this.num_nodes = initObj.num_nodes
      }
      else {
        this.num_nodes = 0;
      }
      if (initObj.hasOwnProperty('node_id')) {
        this.node_id = initObj.node_id
      }
      else {
        this.node_id = [];
      }
      if (initObj.hasOwnProperty('node_position')) {
        this.node_position = initObj.node_position
      }
      else {
        this.node_position = [];
      }
      if (initObj.hasOwnProperty('node_priority')) {
        this.node_priority = initObj.node_priority
      }
      else {
        this.node_priority = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PatrollingPoints
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [num_nodes]
    bufferOffset = _serializer.uint32(obj.num_nodes, buffer, bufferOffset);
    // Serialize message field [node_id]
    bufferOffset = _arraySerializer.uint32(obj.node_id, buffer, bufferOffset, null);
    // Serialize message field [node_position]
    // Serialize the length for message field [node_position]
    bufferOffset = _serializer.uint32(obj.node_position.length, buffer, bufferOffset);
    obj.node_position.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [node_priority]
    bufferOffset = _arraySerializer.float32(obj.node_priority, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatrollingPoints
    let len;
    let data = new PatrollingPoints(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_nodes]
    data.num_nodes = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [node_id]
    data.node_id = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [node_position]
    // Deserialize array length for message field [node_position]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node_position = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node_position[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [node_priority]
    data.node_priority = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.node_id.length;
    length += 24 * object.node_position.length;
    length += 4 * object.node_priority.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'patrolling_build_graph_msgs/PatrollingPoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68b0d4ab8a0fa82167176f3fbbfcc122';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A reference coordinate frame and timestamp
    Header header
    
    # 3D spatial graph
    
    # general information
    uint32   num_nodes  # number of points of interest
    
    # lists (i-th item of each list contains information concerning the i-th node)
    uint32[] node_id                     # node id
    geometry_msgs/Point[] node_position  # node position
    float32[] node_priority              # priority of a node
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PatrollingPoints(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.num_nodes !== undefined) {
      resolved.num_nodes = msg.num_nodes;
    }
    else {
      resolved.num_nodes = 0
    }

    if (msg.node_id !== undefined) {
      resolved.node_id = msg.node_id;
    }
    else {
      resolved.node_id = []
    }

    if (msg.node_position !== undefined) {
      resolved.node_position = new Array(msg.node_position.length);
      for (let i = 0; i < resolved.node_position.length; ++i) {
        resolved.node_position[i] = geometry_msgs.msg.Point.Resolve(msg.node_position[i]);
      }
    }
    else {
      resolved.node_position = []
    }

    if (msg.node_priority !== undefined) {
      resolved.node_priority = msg.node_priority;
    }
    else {
      resolved.node_priority = []
    }

    return resolved;
    }
};

module.exports = PatrollingPoints;
