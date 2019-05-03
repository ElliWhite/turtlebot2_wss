// Auto-generated. Do not edit!

// (in-package volumetric_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LoadMapInFrameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_path = null;
      this.frame = null;
    }
    else {
      if (initObj.hasOwnProperty('file_path')) {
        this.file_path = initObj.file_path
      }
      else {
        this.file_path = '';
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadMapInFrameRequest
    // Serialize message field [file_path]
    bufferOffset = _serializer.string(obj.file_path, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.string(obj.frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadMapInFrameRequest
    let len;
    let data = new LoadMapInFrameRequest(null);
    // Deserialize message field [file_path]
    data.file_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_path.length;
    length += object.frame.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'volumetric_msgs/LoadMapInFrameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '921a98bd927760f83473e5da2c10f1c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string file_path
    string frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadMapInFrameRequest(null);
    if (msg.file_path !== undefined) {
      resolved.file_path = msg.file_path;
    }
    else {
      resolved.file_path = ''
    }

    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = ''
    }

    return resolved;
    }
};

class LoadMapInFrameResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadMapInFrameResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadMapInFrameResponse
    let len;
    let data = new LoadMapInFrameResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'volumetric_msgs/LoadMapInFrameResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadMapInFrameResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: LoadMapInFrameRequest,
  Response: LoadMapInFrameResponse,
  md5sum() { return '921a98bd927760f83473e5da2c10f1c9'; },
  datatype() { return 'volumetric_msgs/LoadMapInFrame'; }
};
