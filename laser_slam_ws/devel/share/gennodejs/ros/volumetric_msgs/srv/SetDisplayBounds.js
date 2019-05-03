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

class SetDisplayBoundsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.min_z = null;
      this.max_z = null;
    }
    else {
      if (initObj.hasOwnProperty('min_z')) {
        this.min_z = initObj.min_z
      }
      else {
        this.min_z = 0.0;
      }
      if (initObj.hasOwnProperty('max_z')) {
        this.max_z = initObj.max_z
      }
      else {
        this.max_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDisplayBoundsRequest
    // Serialize message field [min_z]
    bufferOffset = _serializer.float64(obj.min_z, buffer, bufferOffset);
    // Serialize message field [max_z]
    bufferOffset = _serializer.float64(obj.max_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDisplayBoundsRequest
    let len;
    let data = new SetDisplayBoundsRequest(null);
    // Deserialize message field [min_z]
    data.min_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_z]
    data.max_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'volumetric_msgs/SetDisplayBoundsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07683f201de683853c90da45e9c9c84a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 min_z
    float64 max_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDisplayBoundsRequest(null);
    if (msg.min_z !== undefined) {
      resolved.min_z = msg.min_z;
    }
    else {
      resolved.min_z = 0.0
    }

    if (msg.max_z !== undefined) {
      resolved.max_z = msg.max_z;
    }
    else {
      resolved.max_z = 0.0
    }

    return resolved;
    }
};

class SetDisplayBoundsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDisplayBoundsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDisplayBoundsResponse
    let len;
    let data = new SetDisplayBoundsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'volumetric_msgs/SetDisplayBoundsResponse';
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
    const resolved = new SetDisplayBoundsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetDisplayBoundsRequest,
  Response: SetDisplayBoundsResponse,
  md5sum() { return '07683f201de683853c90da45e9c9c84a'; },
  datatype() { return 'volumetric_msgs/SetDisplayBounds'; }
};
