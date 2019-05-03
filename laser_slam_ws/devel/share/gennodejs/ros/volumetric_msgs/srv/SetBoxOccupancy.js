// Auto-generated. Do not edit!

// (in-package volumetric_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetBoxOccupancyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.box_center = null;
      this.box_size = null;
      this.set_occupied = null;
    }
    else {
      if (initObj.hasOwnProperty('box_center')) {
        this.box_center = initObj.box_center
      }
      else {
        this.box_center = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('box_size')) {
        this.box_size = initObj.box_size
      }
      else {
        this.box_size = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('set_occupied')) {
        this.set_occupied = initObj.set_occupied
      }
      else {
        this.set_occupied = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBoxOccupancyRequest
    // Serialize message field [box_center]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.box_center, buffer, bufferOffset);
    // Serialize message field [box_size]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.box_size, buffer, bufferOffset);
    // Serialize message field [set_occupied]
    bufferOffset = _serializer.bool(obj.set_occupied, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBoxOccupancyRequest
    let len;
    let data = new SetBoxOccupancyRequest(null);
    // Deserialize message field [box_center]
    data.box_center = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [box_size]
    data.box_size = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [set_occupied]
    data.set_occupied = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a service object
    return 'volumetric_msgs/SetBoxOccupancyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6588a1eb7f4c6adf70fa660225beeb92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Vector3 box_center
    geometry_msgs/Vector3 box_size
    bool set_occupied
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBoxOccupancyRequest(null);
    if (msg.box_center !== undefined) {
      resolved.box_center = geometry_msgs.msg.Vector3.Resolve(msg.box_center)
    }
    else {
      resolved.box_center = new geometry_msgs.msg.Vector3()
    }

    if (msg.box_size !== undefined) {
      resolved.box_size = geometry_msgs.msg.Vector3.Resolve(msg.box_size)
    }
    else {
      resolved.box_size = new geometry_msgs.msg.Vector3()
    }

    if (msg.set_occupied !== undefined) {
      resolved.set_occupied = msg.set_occupied;
    }
    else {
      resolved.set_occupied = false
    }

    return resolved;
    }
};

class SetBoxOccupancyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBoxOccupancyResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBoxOccupancyResponse
    let len;
    let data = new SetBoxOccupancyResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'volumetric_msgs/SetBoxOccupancyResponse';
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
    const resolved = new SetBoxOccupancyResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetBoxOccupancyRequest,
  Response: SetBoxOccupancyResponse,
  md5sum() { return '6588a1eb7f4c6adf70fa660225beeb92'; },
  datatype() { return 'volumetric_msgs/SetBoxOccupancy'; }
};
