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

class FlipperCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_id = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlipperCommand
    // Serialize message field [object_id]
    bufferOffset = _serializer.byte(obj.object_id, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlipperCommand
    let len;
    let data = new FlipperCommand(null);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nifti_robot_driver_msgs/FlipperCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf28a09f7c9275cfbfd7adb239964556';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #byte ID_FLIPPER_FRONT_LEFT=3
    #byte ID_FLIPPER_FRONT_RIGHT=4
    #byte ID_FLIPPER_REAR_LEFT=5
    #byte ID_FLIPPER_REAR_RIGHT=6
    byte object_id
    float64 angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FlipperCommand(null);
    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    return resolved;
    }
};

module.exports = FlipperCommand;
