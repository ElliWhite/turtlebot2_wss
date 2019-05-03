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

class networkdelay {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rtt = null;
      this.delay = null;
      this.alive = null;
    }
    else {
      if (initObj.hasOwnProperty('rtt')) {
        this.rtt = initObj.rtt
      }
      else {
        this.rtt = 0;
      }
      if (initObj.hasOwnProperty('delay')) {
        this.delay = initObj.delay
      }
      else {
        this.delay = 0;
      }
      if (initObj.hasOwnProperty('alive')) {
        this.alive = initObj.alive
      }
      else {
        this.alive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type networkdelay
    // Serialize message field [rtt]
    bufferOffset = _serializer.int32(obj.rtt, buffer, bufferOffset);
    // Serialize message field [delay]
    bufferOffset = _serializer.int32(obj.delay, buffer, bufferOffset);
    // Serialize message field [alive]
    bufferOffset = _serializer.bool(obj.alive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type networkdelay
    let len;
    let data = new networkdelay(null);
    // Deserialize message field [rtt]
    data.rtt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [delay]
    data.delay = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alive]
    data.alive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'networkanalysis_msgs/networkdelay';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd03f4625e59c7764c5a566890285e1e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #round trip time (rtt) obtained using "ping" with ICMO echo request
    int32 rtt
    
    #network delay obtained directly at the application level (ros service call)
    int32 delay
    
    #Flag to check if the link is alive or dead
    bool alive
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new networkdelay(null);
    if (msg.rtt !== undefined) {
      resolved.rtt = msg.rtt;
    }
    else {
      resolved.rtt = 0
    }

    if (msg.delay !== undefined) {
      resolved.delay = msg.delay;
    }
    else {
      resolved.delay = 0
    }

    if (msg.alive !== undefined) {
      resolved.alive = msg.alive;
    }
    else {
      resolved.alive = false
    }

    return resolved;
    }
};

module.exports = networkdelay;
