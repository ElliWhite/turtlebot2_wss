// Auto-generated. Do not edit!

// (in-package wireless_network_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RequestRSSRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_position = null;
      this.y_position = null;
      this.z_position = null;
      this.source = null;
    }
    else {
      if (initObj.hasOwnProperty('x_position')) {
        this.x_position = initObj.x_position
      }
      else {
        this.x_position = [];
      }
      if (initObj.hasOwnProperty('y_position')) {
        this.y_position = initObj.y_position
      }
      else {
        this.y_position = [];
      }
      if (initObj.hasOwnProperty('z_position')) {
        this.z_position = initObj.z_position
      }
      else {
        this.z_position = [];
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestRSSRequest
    // Serialize message field [x_position]
    bufferOffset = _arraySerializer.float32(obj.x_position, buffer, bufferOffset, null);
    // Serialize message field [y_position]
    bufferOffset = _arraySerializer.float32(obj.y_position, buffer, bufferOffset, null);
    // Serialize message field [z_position]
    bufferOffset = _arraySerializer.float32(obj.z_position, buffer, bufferOffset, null);
    // Serialize message field [source]
    bufferOffset = _serializer.int32(obj.source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestRSSRequest
    let len;
    let data = new RequestRSSRequest(null);
    // Deserialize message field [x_position]
    data.x_position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y_position]
    data.y_position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [z_position]
    data.z_position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [source]
    data.source = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.x_position.length;
    length += 4 * object.y_position.length;
    length += 4 * object.z_position.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wireless_network_msgs/RequestRSSRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71f69c71214fd6bcc351907cc8a3f142';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32[] x_position
    float32[] y_position
    float32[] z_position
    
    
    int32 source
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestRSSRequest(null);
    if (msg.x_position !== undefined) {
      resolved.x_position = msg.x_position;
    }
    else {
      resolved.x_position = []
    }

    if (msg.y_position !== undefined) {
      resolved.y_position = msg.y_position;
    }
    else {
      resolved.y_position = []
    }

    if (msg.z_position !== undefined) {
      resolved.z_position = msg.z_position;
    }
    else {
      resolved.z_position = []
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    return resolved;
    }
};

class RequestRSSResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rssi_m = null;
      this.rssi_var = null;
    }
    else {
      if (initObj.hasOwnProperty('rssi_m')) {
        this.rssi_m = initObj.rssi_m
      }
      else {
        this.rssi_m = [];
      }
      if (initObj.hasOwnProperty('rssi_var')) {
        this.rssi_var = initObj.rssi_var
      }
      else {
        this.rssi_var = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestRSSResponse
    // Serialize message field [rssi_m]
    bufferOffset = _arraySerializer.float32(obj.rssi_m, buffer, bufferOffset, null);
    // Serialize message field [rssi_var]
    bufferOffset = _arraySerializer.float32(obj.rssi_var, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestRSSResponse
    let len;
    let data = new RequestRSSResponse(null);
    // Deserialize message field [rssi_m]
    data.rssi_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rssi_var]
    data.rssi_var = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.rssi_m.length;
    length += 4 * object.rssi_var.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wireless_network_msgs/RequestRSSResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7dcda5aac55be3ad482a757d4c9bbf9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32[] rssi_m
    float32[] rssi_var
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestRSSResponse(null);
    if (msg.rssi_m !== undefined) {
      resolved.rssi_m = msg.rssi_m;
    }
    else {
      resolved.rssi_m = []
    }

    if (msg.rssi_var !== undefined) {
      resolved.rssi_var = msg.rssi_var;
    }
    else {
      resolved.rssi_var = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestRSSRequest,
  Response: RequestRSSResponse,
  md5sum() { return 'd8423904b521dd22d9d11c6abff995e6'; },
  datatype() { return 'wireless_network_msgs/RequestRSS'; }
};
