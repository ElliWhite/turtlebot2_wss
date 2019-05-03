// Auto-generated. Do not edit!

// (in-package nifti_robot_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControllersStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.core = null;
      this.track_left = null;
      this.track_right = null;
      this.flipper_front_left = null;
      this.flipper_front_right = null;
      this.flipper_rear_left = null;
      this.flipper_rear_right = null;
    }
    else {
      if (initObj.hasOwnProperty('core')) {
        this.core = initObj.core
      }
      else {
        this.core = 0;
      }
      if (initObj.hasOwnProperty('track_left')) {
        this.track_left = initObj.track_left
      }
      else {
        this.track_left = 0;
      }
      if (initObj.hasOwnProperty('track_right')) {
        this.track_right = initObj.track_right
      }
      else {
        this.track_right = 0;
      }
      if (initObj.hasOwnProperty('flipper_front_left')) {
        this.flipper_front_left = initObj.flipper_front_left
      }
      else {
        this.flipper_front_left = 0;
      }
      if (initObj.hasOwnProperty('flipper_front_right')) {
        this.flipper_front_right = initObj.flipper_front_right
      }
      else {
        this.flipper_front_right = 0;
      }
      if (initObj.hasOwnProperty('flipper_rear_left')) {
        this.flipper_rear_left = initObj.flipper_rear_left
      }
      else {
        this.flipper_rear_left = 0;
      }
      if (initObj.hasOwnProperty('flipper_rear_right')) {
        this.flipper_rear_right = initObj.flipper_rear_right
      }
      else {
        this.flipper_rear_right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllersStatus
    // Serialize message field [core]
    bufferOffset = _serializer.int32(obj.core, buffer, bufferOffset);
    // Serialize message field [track_left]
    bufferOffset = _serializer.int32(obj.track_left, buffer, bufferOffset);
    // Serialize message field [track_right]
    bufferOffset = _serializer.int32(obj.track_right, buffer, bufferOffset);
    // Serialize message field [flipper_front_left]
    bufferOffset = _serializer.int32(obj.flipper_front_left, buffer, bufferOffset);
    // Serialize message field [flipper_front_right]
    bufferOffset = _serializer.int32(obj.flipper_front_right, buffer, bufferOffset);
    // Serialize message field [flipper_rear_left]
    bufferOffset = _serializer.int32(obj.flipper_rear_left, buffer, bufferOffset);
    // Serialize message field [flipper_rear_right]
    bufferOffset = _serializer.int32(obj.flipper_rear_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllersStatus
    let len;
    let data = new ControllersStatus(null);
    // Deserialize message field [core]
    data.core = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_left]
    data.track_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_right]
    data.track_right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [flipper_front_left]
    data.flipper_front_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [flipper_front_right]
    data.flipper_front_right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [flipper_rear_left]
    data.flipper_rear_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [flipper_rear_right]
    data.flipper_rear_right = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nifti_robot_driver_msgs/ControllersStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd206d136b46c978abb3dde3682bb506';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 core
    int32 track_left
    int32 track_right
    int32 flipper_front_left
    int32 flipper_front_right
    int32 flipper_rear_left
    int32 flipper_rear_right
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllersStatus(null);
    if (msg.core !== undefined) {
      resolved.core = msg.core;
    }
    else {
      resolved.core = 0
    }

    if (msg.track_left !== undefined) {
      resolved.track_left = msg.track_left;
    }
    else {
      resolved.track_left = 0
    }

    if (msg.track_right !== undefined) {
      resolved.track_right = msg.track_right;
    }
    else {
      resolved.track_right = 0
    }

    if (msg.flipper_front_left !== undefined) {
      resolved.flipper_front_left = msg.flipper_front_left;
    }
    else {
      resolved.flipper_front_left = 0
    }

    if (msg.flipper_front_right !== undefined) {
      resolved.flipper_front_right = msg.flipper_front_right;
    }
    else {
      resolved.flipper_front_right = 0
    }

    if (msg.flipper_rear_left !== undefined) {
      resolved.flipper_rear_left = msg.flipper_rear_left;
    }
    else {
      resolved.flipper_rear_left = 0
    }

    if (msg.flipper_rear_right !== undefined) {
      resolved.flipper_rear_right = msg.flipper_rear_right;
    }
    else {
      resolved.flipper_rear_right = 0
    }

    return resolved;
    }
};

module.exports = ControllersStatus;
