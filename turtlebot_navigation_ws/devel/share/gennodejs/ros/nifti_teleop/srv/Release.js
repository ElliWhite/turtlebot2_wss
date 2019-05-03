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

class ReleaseRequest {
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
    // Serializes a message object of type ReleaseRequest
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReleaseRequest
    let len;
    let data = new ReleaseRequest(null);
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
    return 'nifti_teleop/ReleaseRequest';
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
    const resolved = new ReleaseRequest(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    return resolved;
    }
};

class ReleaseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReleaseResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReleaseResponse
    let len;
    let data = new ReleaseResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nifti_teleop/ReleaseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReleaseResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ReleaseRequest,
  Response: ReleaseResponse,
  md5sum() { return 'd3ab87cb63701ba577b5ab3413ba13da'; },
  datatype() { return 'nifti_teleop/Release'; }
};
