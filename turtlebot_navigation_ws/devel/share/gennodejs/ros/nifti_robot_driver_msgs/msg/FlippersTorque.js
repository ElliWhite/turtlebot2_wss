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

class FlippersTorque {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front = null;
      this.rear = null;
    }
    else {
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = 0.0;
      }
      if (initObj.hasOwnProperty('rear')) {
        this.rear = initObj.rear
      }
      else {
        this.rear = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlippersTorque
    // Serialize message field [front]
    bufferOffset = _serializer.float64(obj.front, buffer, bufferOffset);
    // Serialize message field [rear]
    bufferOffset = _serializer.float64(obj.rear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlippersTorque
    let len;
    let data = new FlippersTorque(null);
    // Deserialize message field [front]
    data.front = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear]
    data.rear = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nifti_robot_driver_msgs/FlippersTorque';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04b1a08465bee4bdf0e211984000b44b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 front
    float64 rear
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FlippersTorque(null);
    if (msg.front !== undefined) {
      resolved.front = msg.front;
    }
    else {
      resolved.front = 0.0
    }

    if (msg.rear !== undefined) {
      resolved.rear = msg.rear;
    }
    else {
      resolved.rear = 0.0
    }

    return resolved;
    }
};

module.exports = FlippersTorque;
