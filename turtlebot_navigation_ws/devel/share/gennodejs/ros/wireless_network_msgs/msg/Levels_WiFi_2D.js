// Auto-generated. Do not edit!

// (in-package wireless_network_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Levels_WiFi_2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.LL_level = null;
      this.LR_level = null;
      this.UL_level = null;
      this.UR_level = null;
      this.C_level = null;
      this.LL_level_abs = null;
      this.LR_level_abs = null;
      this.UL_level_abs = null;
      this.UR_level_abs = null;
      this.C_level_abs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('LL_level')) {
        this.LL_level = initObj.LL_level
      }
      else {
        this.LL_level = 0.0;
      }
      if (initObj.hasOwnProperty('LR_level')) {
        this.LR_level = initObj.LR_level
      }
      else {
        this.LR_level = 0.0;
      }
      if (initObj.hasOwnProperty('UL_level')) {
        this.UL_level = initObj.UL_level
      }
      else {
        this.UL_level = 0.0;
      }
      if (initObj.hasOwnProperty('UR_level')) {
        this.UR_level = initObj.UR_level
      }
      else {
        this.UR_level = 0.0;
      }
      if (initObj.hasOwnProperty('C_level')) {
        this.C_level = initObj.C_level
      }
      else {
        this.C_level = 0.0;
      }
      if (initObj.hasOwnProperty('LL_level_abs')) {
        this.LL_level_abs = initObj.LL_level_abs
      }
      else {
        this.LL_level_abs = 0.0;
      }
      if (initObj.hasOwnProperty('LR_level_abs')) {
        this.LR_level_abs = initObj.LR_level_abs
      }
      else {
        this.LR_level_abs = 0.0;
      }
      if (initObj.hasOwnProperty('UL_level_abs')) {
        this.UL_level_abs = initObj.UL_level_abs
      }
      else {
        this.UL_level_abs = 0.0;
      }
      if (initObj.hasOwnProperty('UR_level_abs')) {
        this.UR_level_abs = initObj.UR_level_abs
      }
      else {
        this.UR_level_abs = 0.0;
      }
      if (initObj.hasOwnProperty('C_level_abs')) {
        this.C_level_abs = initObj.C_level_abs
      }
      else {
        this.C_level_abs = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Levels_WiFi_2D
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [LL_level]
    bufferOffset = _serializer.float32(obj.LL_level, buffer, bufferOffset);
    // Serialize message field [LR_level]
    bufferOffset = _serializer.float32(obj.LR_level, buffer, bufferOffset);
    // Serialize message field [UL_level]
    bufferOffset = _serializer.float32(obj.UL_level, buffer, bufferOffset);
    // Serialize message field [UR_level]
    bufferOffset = _serializer.float32(obj.UR_level, buffer, bufferOffset);
    // Serialize message field [C_level]
    bufferOffset = _serializer.float32(obj.C_level, buffer, bufferOffset);
    // Serialize message field [LL_level_abs]
    bufferOffset = _serializer.float32(obj.LL_level_abs, buffer, bufferOffset);
    // Serialize message field [LR_level_abs]
    bufferOffset = _serializer.float32(obj.LR_level_abs, buffer, bufferOffset);
    // Serialize message field [UL_level_abs]
    bufferOffset = _serializer.float32(obj.UL_level_abs, buffer, bufferOffset);
    // Serialize message field [UR_level_abs]
    bufferOffset = _serializer.float32(obj.UR_level_abs, buffer, bufferOffset);
    // Serialize message field [C_level_abs]
    bufferOffset = _serializer.float32(obj.C_level_abs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Levels_WiFi_2D
    let len;
    let data = new Levels_WiFi_2D(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [LL_level]
    data.LL_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LR_level]
    data.LR_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [UL_level]
    data.UL_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [UR_level]
    data.UR_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [C_level]
    data.C_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LL_level_abs]
    data.LL_level_abs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LR_level_abs]
    data.LR_level_abs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [UL_level_abs]
    data.UL_level_abs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [UR_level_abs]
    data.UR_level_abs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [C_level_abs]
    data.C_level_abs = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wireless_network_msgs/Levels_WiFi_2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6a31ec136ad71020ee606788242b927';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float32 LL_level 
    # Lower left WiFi signal in a normalized scale (1-100)
    
    float32 LR_level 
    # Lower Right WiFi signal in a normalized scale (1-100)
    
    float32 UL_level 
    # Upper Left WiFi signal in a normalized scale (1-100)
    
    float32 UR_level 
    # Upper Right WiFi signal in a normalized scale (1-100)
    
    float32 C_level 
    # Center WiFi signal in a normalized scale (1-100)
    
    float32 LL_level_abs 
    # Lower Left WiFi signal in dBm
    
    float32 LR_level_abs 
    # Lower Right WiFi signal in dBm
    
    float32 UL_level_abs 
    # Lower Left WiFi signal in dBm
    
    float32 UR_level_abs 
    # Upper Right WiFi signal in dBm
    
    float32 C_level_abs 
    # Center WiFi signal in dBm
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Levels_WiFi_2D(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.LL_level !== undefined) {
      resolved.LL_level = msg.LL_level;
    }
    else {
      resolved.LL_level = 0.0
    }

    if (msg.LR_level !== undefined) {
      resolved.LR_level = msg.LR_level;
    }
    else {
      resolved.LR_level = 0.0
    }

    if (msg.UL_level !== undefined) {
      resolved.UL_level = msg.UL_level;
    }
    else {
      resolved.UL_level = 0.0
    }

    if (msg.UR_level !== undefined) {
      resolved.UR_level = msg.UR_level;
    }
    else {
      resolved.UR_level = 0.0
    }

    if (msg.C_level !== undefined) {
      resolved.C_level = msg.C_level;
    }
    else {
      resolved.C_level = 0.0
    }

    if (msg.LL_level_abs !== undefined) {
      resolved.LL_level_abs = msg.LL_level_abs;
    }
    else {
      resolved.LL_level_abs = 0.0
    }

    if (msg.LR_level_abs !== undefined) {
      resolved.LR_level_abs = msg.LR_level_abs;
    }
    else {
      resolved.LR_level_abs = 0.0
    }

    if (msg.UL_level_abs !== undefined) {
      resolved.UL_level_abs = msg.UL_level_abs;
    }
    else {
      resolved.UL_level_abs = 0.0
    }

    if (msg.UR_level_abs !== undefined) {
      resolved.UR_level_abs = msg.UR_level_abs;
    }
    else {
      resolved.UR_level_abs = 0.0
    }

    if (msg.C_level_abs !== undefined) {
      resolved.C_level_abs = msg.C_level_abs;
    }
    else {
      resolved.C_level_abs = 0.0
    }

    return resolved;
    }
};

module.exports = Levels_WiFi_2D;
