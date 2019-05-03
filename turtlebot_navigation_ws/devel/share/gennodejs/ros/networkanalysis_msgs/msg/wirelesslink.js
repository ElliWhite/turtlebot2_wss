// Auto-generated. Do not edit!

// (in-package networkanalysis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class wirelesslink {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rssi = null;
      this.lqi = null;
      this.noise = null;
    }
    else {
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0;
      }
      if (initObj.hasOwnProperty('lqi')) {
        this.lqi = initObj.lqi
      }
      else {
        this.lqi = 0;
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wirelesslink
    // Serialize message field [rssi]
    bufferOffset = _serializer.int16(obj.rssi, buffer, bufferOffset);
    // Serialize message field [lqi]
    bufferOffset = _serializer.int16(obj.lqi, buffer, bufferOffset);
    // Serialize message field [noise]
    bufferOffset = _serializer.int16(obj.noise, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wirelesslink
    let len;
    let data = new wirelesslink(null);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [lqi]
    data.lqi = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [noise]
    data.noise = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'networkanalysis_msgs/wirelesslink';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '457a5c2625e82fb0b67b1de1eee53435';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Received Signal Strength (RSS) in dBm
    int16 rssi
    
    #Link Quality of the wireless link in percentage
    int16 lqi
    
    #Noise floor of the wireless link in dBm (only very few NICs provide this correctly)
    int16 noise
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wirelesslink(null);
    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0
    }

    if (msg.lqi !== undefined) {
      resolved.lqi = msg.lqi;
    }
    else {
      resolved.lqi = 0
    }

    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = 0
    }

    return resolved;
    }
};

module.exports = wirelesslink;
