// Auto-generated. Do not edit!

// (in-package nifti_robot_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CurrentsStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trackLeft = null;
      this.trackRight = null;
      this.frontLeft = null;
      this.frontRight = null;
      this.rearLeft = null;
      this.rearRight = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trackLeft')) {
        this.trackLeft = initObj.trackLeft
      }
      else {
        this.trackLeft = 0.0;
      }
      if (initObj.hasOwnProperty('trackRight')) {
        this.trackRight = initObj.trackRight
      }
      else {
        this.trackRight = 0.0;
      }
      if (initObj.hasOwnProperty('frontLeft')) {
        this.frontLeft = initObj.frontLeft
      }
      else {
        this.frontLeft = 0.0;
      }
      if (initObj.hasOwnProperty('frontRight')) {
        this.frontRight = initObj.frontRight
      }
      else {
        this.frontRight = 0.0;
      }
      if (initObj.hasOwnProperty('rearLeft')) {
        this.rearLeft = initObj.rearLeft
      }
      else {
        this.rearLeft = 0.0;
      }
      if (initObj.hasOwnProperty('rearRight')) {
        this.rearRight = initObj.rearRight
      }
      else {
        this.rearRight = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentsStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trackLeft]
    bufferOffset = _serializer.float64(obj.trackLeft, buffer, bufferOffset);
    // Serialize message field [trackRight]
    bufferOffset = _serializer.float64(obj.trackRight, buffer, bufferOffset);
    // Serialize message field [frontLeft]
    bufferOffset = _serializer.float64(obj.frontLeft, buffer, bufferOffset);
    // Serialize message field [frontRight]
    bufferOffset = _serializer.float64(obj.frontRight, buffer, bufferOffset);
    // Serialize message field [rearLeft]
    bufferOffset = _serializer.float64(obj.rearLeft, buffer, bufferOffset);
    // Serialize message field [rearRight]
    bufferOffset = _serializer.float64(obj.rearRight, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentsStamped
    let len;
    let data = new CurrentsStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trackLeft]
    data.trackLeft = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trackRight]
    data.trackRight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frontLeft]
    data.frontLeft = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frontRight]
    data.frontRight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rearLeft]
    data.rearLeft = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rearRight]
    data.rearRight = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nifti_robot_driver_msgs/CurrentsStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '612d7c364d952e0d2170a2821dd2bd7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 trackLeft
    float64 trackRight
    float64 frontLeft
    float64 frontRight
    float64 rearLeft
    float64 rearRight
    
    
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
    const resolved = new CurrentsStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trackLeft !== undefined) {
      resolved.trackLeft = msg.trackLeft;
    }
    else {
      resolved.trackLeft = 0.0
    }

    if (msg.trackRight !== undefined) {
      resolved.trackRight = msg.trackRight;
    }
    else {
      resolved.trackRight = 0.0
    }

    if (msg.frontLeft !== undefined) {
      resolved.frontLeft = msg.frontLeft;
    }
    else {
      resolved.frontLeft = 0.0
    }

    if (msg.frontRight !== undefined) {
      resolved.frontRight = msg.frontRight;
    }
    else {
      resolved.frontRight = 0.0
    }

    if (msg.rearLeft !== undefined) {
      resolved.rearLeft = msg.rearLeft;
    }
    else {
      resolved.rearLeft = 0.0
    }

    if (msg.rearRight !== undefined) {
      resolved.rearRight = msg.rearRight;
    }
    else {
      resolved.rearRight = 0.0
    }

    return resolved;
    }
};

module.exports = CurrentsStamped;
