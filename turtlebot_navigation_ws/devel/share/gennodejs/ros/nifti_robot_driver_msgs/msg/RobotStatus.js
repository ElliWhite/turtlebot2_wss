// Auto-generated. Do not edit!

// (in-package nifti_robot_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControllersStatus = require('./ControllersStatus.js');

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery_level = null;
      this.battery_status = null;
      this.brake_on = null;
      this.scanning_speed = null;
      this.controllers_status = null;
      this.controllers_error = null;
    }
    else {
      if (initObj.hasOwnProperty('battery_level')) {
        this.battery_level = initObj.battery_level
      }
      else {
        this.battery_level = 0.0;
      }
      if (initObj.hasOwnProperty('battery_status')) {
        this.battery_status = initObj.battery_status
      }
      else {
        this.battery_status = 0;
      }
      if (initObj.hasOwnProperty('brake_on')) {
        this.brake_on = initObj.brake_on
      }
      else {
        this.brake_on = false;
      }
      if (initObj.hasOwnProperty('scanning_speed')) {
        this.scanning_speed = initObj.scanning_speed
      }
      else {
        this.scanning_speed = 0.0;
      }
      if (initObj.hasOwnProperty('controllers_status')) {
        this.controllers_status = initObj.controllers_status
      }
      else {
        this.controllers_status = new ControllersStatus();
      }
      if (initObj.hasOwnProperty('controllers_error')) {
        this.controllers_error = initObj.controllers_error
      }
      else {
        this.controllers_error = new ControllersStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [battery_level]
    bufferOffset = _serializer.float64(obj.battery_level, buffer, bufferOffset);
    // Serialize message field [battery_status]
    bufferOffset = _serializer.int32(obj.battery_status, buffer, bufferOffset);
    // Serialize message field [brake_on]
    bufferOffset = _serializer.bool(obj.brake_on, buffer, bufferOffset);
    // Serialize message field [scanning_speed]
    bufferOffset = _serializer.float64(obj.scanning_speed, buffer, bufferOffset);
    // Serialize message field [controllers_status]
    bufferOffset = ControllersStatus.serialize(obj.controllers_status, buffer, bufferOffset);
    // Serialize message field [controllers_error]
    bufferOffset = ControllersStatus.serialize(obj.controllers_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [battery_level]
    data.battery_level = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [battery_status]
    data.battery_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_on]
    data.brake_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scanning_speed]
    data.scanning_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [controllers_status]
    data.controllers_status = ControllersStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [controllers_error]
    data.controllers_error = ControllersStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 77;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nifti_robot_driver_msgs/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd9c20e6dcc350dd2cee593b1860f212';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #int32 BAT_CRITICAL=2
    #int32 BAT_WARNING=1
    #int32 BAT_OK=0
    float64 battery_level
    int32 battery_status
    bool brake_on
    float64 scanning_speed
    ControllersStatus controllers_status
    ControllersStatus controllers_error
    
    ================================================================================
    MSG: nifti_robot_driver_msgs/ControllersStatus
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
    const resolved = new RobotStatus(null);
    if (msg.battery_level !== undefined) {
      resolved.battery_level = msg.battery_level;
    }
    else {
      resolved.battery_level = 0.0
    }

    if (msg.battery_status !== undefined) {
      resolved.battery_status = msg.battery_status;
    }
    else {
      resolved.battery_status = 0
    }

    if (msg.brake_on !== undefined) {
      resolved.brake_on = msg.brake_on;
    }
    else {
      resolved.brake_on = false
    }

    if (msg.scanning_speed !== undefined) {
      resolved.scanning_speed = msg.scanning_speed;
    }
    else {
      resolved.scanning_speed = 0.0
    }

    if (msg.controllers_status !== undefined) {
      resolved.controllers_status = ControllersStatus.Resolve(msg.controllers_status)
    }
    else {
      resolved.controllers_status = new ControllersStatus()
    }

    if (msg.controllers_error !== undefined) {
      resolved.controllers_error = ControllersStatus.Resolve(msg.controllers_error)
    }
    else {
      resolved.controllers_error = new ControllersStatus()
    }

    return resolved;
    }
};

module.exports = RobotStatus;
