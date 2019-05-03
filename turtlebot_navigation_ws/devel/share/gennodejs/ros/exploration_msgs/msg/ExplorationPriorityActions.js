// Auto-generated. Do not edit!

// (in-package exploration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ExplorationPriorityPoint = require('./ExplorationPriorityPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ExplorationPriorityActions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sender = null;
      this.num_points = null;
      this.priority_points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = 0;
      }
      if (initObj.hasOwnProperty('num_points')) {
        this.num_points = initObj.num_points
      }
      else {
        this.num_points = 0;
      }
      if (initObj.hasOwnProperty('priority_points')) {
        this.priority_points = initObj.priority_points
      }
      else {
        this.priority_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExplorationPriorityActions
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sender]
    bufferOffset = _serializer.uint8(obj.sender, buffer, bufferOffset);
    // Serialize message field [num_points]
    bufferOffset = _serializer.int32(obj.num_points, buffer, bufferOffset);
    // Serialize message field [priority_points]
    // Serialize the length for message field [priority_points]
    bufferOffset = _serializer.uint32(obj.priority_points.length, buffer, bufferOffset);
    obj.priority_points.forEach((val) => {
      bufferOffset = ExplorationPriorityPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExplorationPriorityActions
    let len;
    let data = new ExplorationPriorityActions(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sender]
    data.sender = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_points]
    data.num_points = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [priority_points]
    // Deserialize array length for message field [priority_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.priority_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.priority_points[i] = ExplorationPriorityPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.priority_points.forEach((val) => {
      length += ExplorationPriorityPoint.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exploration_msgs/ExplorationPriorityActions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0712cf241eaeffcf9cd15e90cdffcda9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sender type
    uint8 kSenderExplorer = 0
    uint8 kSenderGUI      = 1
    
    # A reference coordinate frame and timestamp
    Header header
    
    uint8 sender                                # sender type
    
    int32 num_points	                    # number of points
    ExplorationPriorityPoint[] priority_points  # list of priority points with actions
    
    
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
    MSG: exploration_msgs/ExplorationPriorityPoint
    # action types
    uint8 kActionAdd       = 0
    uint8 kActionRemove    = 1  
    uint8 kActionRemoveAll = 2
    
    # A reference coordinate frame and timestamp
    Header header
    
    uint32 id                     # point id
    geometry_msgs/Point position  # position
    float32 priority              # priority 
    uint8 action		      # action type
    
    
    
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
    const resolved = new ExplorationPriorityActions(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = 0
    }

    if (msg.num_points !== undefined) {
      resolved.num_points = msg.num_points;
    }
    else {
      resolved.num_points = 0
    }

    if (msg.priority_points !== undefined) {
      resolved.priority_points = new Array(msg.priority_points.length);
      for (let i = 0; i < resolved.priority_points.length; ++i) {
        resolved.priority_points[i] = ExplorationPriorityPoint.Resolve(msg.priority_points[i]);
      }
    }
    else {
      resolved.priority_points = []
    }

    return resolved;
    }
};

// Constants for message
ExplorationPriorityActions.Constants = {
  KSENDEREXPLORER: 0,
  KSENDERGUI: 1,
}

module.exports = ExplorationPriorityActions;
