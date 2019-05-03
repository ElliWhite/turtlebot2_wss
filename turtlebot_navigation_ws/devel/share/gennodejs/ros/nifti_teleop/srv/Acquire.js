// Auto-generated. Do not edit!

// (in-package nifti_teleop.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AcquireRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
    }
    else {
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AcquireRequest
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AcquireRequest
    let len;
    let data = new AcquireRequest(null);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nifti_teleop/AcquireRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8f94bae31b356b24d0427f80426d0c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AcquireRequest(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    return resolved;
    }
};

class AcquireResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acquired = null;
    }
    else {
      if (initObj.hasOwnProperty('acquired')) {
        this.acquired = initObj.acquired
      }
      else {
        this.acquired = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AcquireResponse
    // Serialize message field [acquired]
    bufferOffset = _serializer.bool(obj.acquired, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AcquireResponse
    let len;
    let data = new AcquireResponse(null);
    // Deserialize message field [acquired]
    data.acquired = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nifti_teleop/AcquireResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f73f9cb8c9863516d21fc4f714b22191';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool acquired
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AcquireResponse(null);
    if (msg.acquired !== undefined) {
      resolved.acquired = msg.acquired;
    }
    else {
      resolved.acquired = false
    }

    return resolved;
    }
};

module.exports = {
  Request: AcquireRequest,
  Response: AcquireResponse,
  md5sum() { return '2543eda9ec3404107775710514498ddf'; },
  datatype() { return 'nifti_teleop/Acquire'; }
};
