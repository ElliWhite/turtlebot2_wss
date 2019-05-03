// Auto-generated. Do not edit!

// (in-package wireless_network_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class Request_GPR_resetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id_source = null;
    }
    else {
      if (initObj.hasOwnProperty('id_source')) {
        this.id_source = initObj.id_source
      }
      else {
        this.id_source = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Request_GPR_resetRequest
    // Serialize message field [id_source]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.id_source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Request_GPR_resetRequest
    let len;
    let data = new Request_GPR_resetRequest(null);
    // Deserialize message field [id_source]
    data.id_source = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wireless_network_msgs/Request_GPR_resetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '833819c4687d26c1501ed0a7ab1aebec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Int32 id_source
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Request_GPR_resetRequest(null);
    if (msg.id_source !== undefined) {
      resolved.id_source = std_msgs.msg.Int32.Resolve(msg.id_source)
    }
    else {
      resolved.id_source = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

class Request_GPR_resetResponse {
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
        this.success = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Request_GPR_resetResponse
    // Serialize message field [success]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Request_GPR_resetResponse
    let len;
    let data = new Request_GPR_resetResponse(null);
    // Deserialize message field [success]
    data.success = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wireless_network_msgs/Request_GPR_resetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '049283c52c4041e46fdb992b154d0b41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Int32 success
    
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Request_GPR_resetResponse(null);
    if (msg.success !== undefined) {
      resolved.success = std_msgs.msg.Int32.Resolve(msg.success)
    }
    else {
      resolved.success = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

module.exports = {
  Request: Request_GPR_resetRequest,
  Response: Request_GPR_resetResponse,
  md5sum() { return '7818eabd25118ebe6de9ee66d82ef30c'; },
  datatype() { return 'wireless_network_msgs/Request_GPR_reset'; }
};
