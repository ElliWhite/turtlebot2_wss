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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotStatusStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.battery_level = null;
      this.battery_status = null;
      this.brake_on = null;
      this.emergency_stop_on = null;
      this.scanning_speed = null;
      this.controllers_status = null;
      this.controllers_error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
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
      if (initObj.hasOwnProperty('emergency_stop_on')) {
        this.emergency_stop_on = initObj.emergency_stop_on
      }
      else {
        this.emergency_stop_on = false;
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
    // Serializes a message object of type RobotStatusStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [battery_level]
    bufferOffset = _serializer.float64(obj.battery_level, buffer, bufferOffset);
    // Serialize message field [battery_status]
    bufferOffset = _serializer.int32(obj.battery_status, buffer, bufferOffset);
    // Serialize message field [brake_on]
    bufferOffset = _serializer.bool(obj.brake_on, buffer, bufferOffset);
    // Serialize message field [emergency_stop_on]
    bufferOffset = _serializer.bool(obj.emergency_stop_on, buffer, bufferOffset);
    // Serialize message field [scanning_speed]
    bufferOffset = _serializer.float64(obj.scanning_speed, buffer, bufferOffset);
    // Serialize message field [controllers_status]
    bufferOffset = ControllersStatus.serialize(obj.controllers_status, buffer, bufferOffset);
    // Serialize message field [controllers_error]
    bufferOffset = ControllersStatus.serialize(obj.controllers_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatusStamped
    let len;
    let data = new RobotStatusStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery_level]
    data.battery_level = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [battery_status]
    data.battery_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_on]
    data.brake_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency_stop_on]
    data.emergency_stop_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scanning_speed]
    data.scanning_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [controllers_status]
    data.controllers_status = ControllersStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [controllers_error]
    data.controllers_error = ControllersStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 78;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nifti_robot_driver_msgs/RobotStatusStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57c03a2db12d8cfa50a17fe84f95f4c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    #int32 BAT_CRITICAL=2
    #int32 BAT_WARNING=1
    #int32 BAT_OK=0
    float64 battery_level
    int32 battery_status
    bool brake_on
    bool emergency_stop_on
    float64 scanning_speed
    ControllersStatus controllers_status
    ControllersStatus controllers_error
    
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
    const resolved = new RobotStatusStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

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

    if (msg.emergency_stop_on !== undefined) {
      resolved.emergency_stop_on = msg.emergency_stop_on;
    }
    else {
      resolved.emergency_stop_on = false
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

module.exports = RobotStatusStamped;
