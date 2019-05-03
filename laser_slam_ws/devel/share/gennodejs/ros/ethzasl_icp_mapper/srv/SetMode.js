// Auto-generated. Do not edit!

// (in-package ethzasl_icp_mapper.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.localize = null;
      this.map = null;
      this.applyChange = null;
    }
    else {
      if (initObj.hasOwnProperty('localize')) {
        this.localize = initObj.localize
      }
      else {
        this.localize = false;
      }
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = false;
      }
      if (initObj.hasOwnProperty('applyChange')) {
        this.applyChange = initObj.applyChange
      }
      else {
        this.applyChange = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetModeRequest
    // Serialize message field [localize]
    bufferOffset = _serializer.bool(obj.localize, buffer, bufferOffset);
    // Serialize message field [map]
    bufferOffset = _serializer.bool(obj.map, buffer, bufferOffset);
    // Serialize message field [applyChange]
    bufferOffset = _serializer.bool(obj.applyChange, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetModeRequest
    let len;
    let data = new SetModeRequest(null);
    // Deserialize message field [localize]
    data.localize = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [map]
    data.map = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [applyChange]
    data.applyChange = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethzasl_icp_mapper/SetModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70da9f49c8aff1c1eadda36f4cb53efb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool localize
    bool map
    bool applyChange
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetModeRequest(null);
    if (msg.localize !== undefined) {
      resolved.localize = msg.localize;
    }
    else {
      resolved.localize = false
    }

    if (msg.map !== undefined) {
      resolved.map = msg.map;
    }
    else {
      resolved.map = false
    }

    if (msg.applyChange !== undefined) {
      resolved.applyChange = msg.applyChange;
    }
    else {
      resolved.applyChange = false
    }

    return resolved;
    }
};

class SetModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.localize = null;
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('localize')) {
        this.localize = initObj.localize
      }
      else {
        this.localize = false;
      }
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetModeResponse
    // Serialize message field [localize]
    bufferOffset = _serializer.bool(obj.localize, buffer, bufferOffset);
    // Serialize message field [map]
    bufferOffset = _serializer.bool(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetModeResponse
    let len;
    let data = new SetModeResponse(null);
    // Deserialize message field [localize]
    data.localize = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [map]
    data.map = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethzasl_icp_mapper/SetModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34feb3c27737328fa52508eefd06d5a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool localize
    bool map
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetModeResponse(null);
    if (msg.localize !== undefined) {
      resolved.localize = msg.localize;
    }
    else {
      resolved.localize = false
    }

    if (msg.map !== undefined) {
      resolved.map = msg.map;
    }
    else {
      resolved.map = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetModeRequest,
  Response: SetModeResponse,
  md5sum() { return '11879a69b8d234b7e1458ef090e302c2'; },
  datatype() { return 'ethzasl_icp_mapper/SetMode'; }
};
