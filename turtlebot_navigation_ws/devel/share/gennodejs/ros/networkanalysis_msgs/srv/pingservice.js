// Auto-generated. Do not edit!

// (in-package networkanalysis_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class pingserviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inp = null;
    }
    else {
      if (initObj.hasOwnProperty('inp')) {
        this.inp = initObj.inp
      }
      else {
        this.inp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pingserviceRequest
    // Serialize message field [inp]
    bufferOffset = _serializer.int16(obj.inp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pingserviceRequest
    let len;
    let data = new pingserviceRequest(null);
    // Deserialize message field [inp]
    data.inp = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'networkanalysis_msgs/pingserviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3878fd40167025aedb0deed0309559a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 inp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pingserviceRequest(null);
    if (msg.inp !== undefined) {
      resolved.inp = msg.inp;
    }
    else {
      resolved.inp = 0
    }

    return resolved;
    }
};

class pingserviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.outp = null;
    }
    else {
      if (initObj.hasOwnProperty('outp')) {
        this.outp = initObj.outp
      }
      else {
        this.outp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pingserviceResponse
    // Serialize message field [outp]
    bufferOffset = _serializer.int16(obj.outp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pingserviceResponse
    let len;
    let data = new pingserviceResponse(null);
    // Deserialize message field [outp]
    data.outp = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'networkanalysis_msgs/pingserviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '139a984a130285faf35d9059e852f544';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 outp
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pingserviceResponse(null);
    if (msg.outp !== undefined) {
      resolved.outp = msg.outp;
    }
    else {
      resolved.outp = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: pingserviceRequest,
  Response: pingserviceResponse,
  md5sum() { return '12a26707b8a62d612b0a1ffbc1162d35'; },
  datatype() { return 'networkanalysis_msgs/pingservice'; }
};
