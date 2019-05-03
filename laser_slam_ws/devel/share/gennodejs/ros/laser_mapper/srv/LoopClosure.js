// Auto-generated. Do not edit!

// (in-package laser_mapper.srv)


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

class LoopClosureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_a = null;
      this.time_b = null;
      this.transform_a_b = null;
      this.collector_times = null;
    }
    else {
      if (initObj.hasOwnProperty('time_a')) {
        this.time_a = initObj.time_a
      }
      else {
        this.time_a = 0;
      }
      if (initObj.hasOwnProperty('time_b')) {
        this.time_b = initObj.time_b
      }
      else {
        this.time_b = 0;
      }
      if (initObj.hasOwnProperty('transform_a_b')) {
        this.transform_a_b = initObj.transform_a_b
      }
      else {
        this.transform_a_b = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('collector_times')) {
        this.collector_times = initObj.collector_times
      }
      else {
        this.collector_times = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoopClosureRequest
    // Serialize message field [time_a]
    bufferOffset = _serializer.int64(obj.time_a, buffer, bufferOffset);
    // Serialize message field [time_b]
    bufferOffset = _serializer.int64(obj.time_b, buffer, bufferOffset);
    // Serialize message field [transform_a_b]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform_a_b, buffer, bufferOffset);
    // Serialize message field [collector_times]
    bufferOffset = _arraySerializer.int64(obj.collector_times, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoopClosureRequest
    let len;
    let data = new LoopClosureRequest(null);
    // Deserialize message field [time_a]
    data.time_a = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [time_b]
    data.time_b = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [transform_a_b]
    data.transform_a_b = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [collector_times]
    data.collector_times = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.collector_times.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_mapper/LoopClosureRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63745a70c33f565b244229b7533d43d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int64 time_a
    int64 time_b
    geometry_msgs/Transform transform_a_b
    int64[] collector_times
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoopClosureRequest(null);
    if (msg.time_a !== undefined) {
      resolved.time_a = msg.time_a;
    }
    else {
      resolved.time_a = 0
    }

    if (msg.time_b !== undefined) {
      resolved.time_b = msg.time_b;
    }
    else {
      resolved.time_b = 0
    }

    if (msg.transform_a_b !== undefined) {
      resolved.transform_a_b = geometry_msgs.msg.Transform.Resolve(msg.transform_a_b)
    }
    else {
      resolved.transform_a_b = new geometry_msgs.msg.Transform()
    }

    if (msg.collector_times !== undefined) {
      resolved.collector_times = msg.collector_times;
    }
    else {
      resolved.collector_times = []
    }

    return resolved;
    }
};

class LoopClosureResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transforms = null;
    }
    else {
      if (initObj.hasOwnProperty('transforms')) {
        this.transforms = initObj.transforms
      }
      else {
        this.transforms = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoopClosureResponse
    // Serialize message field [transforms]
    // Serialize the length for message field [transforms]
    bufferOffset = _serializer.uint32(obj.transforms.length, buffer, bufferOffset);
    obj.transforms.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Transform.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoopClosureResponse
    let len;
    let data = new LoopClosureResponse(null);
    // Deserialize message field [transforms]
    // Deserialize array length for message field [transforms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.transforms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.transforms[i] = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.transforms.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_mapper/LoopClosureResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4139599d8ee1206e76a44f8815452ccc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Transform[] transforms
    
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoopClosureResponse(null);
    if (msg.transforms !== undefined) {
      resolved.transforms = new Array(msg.transforms.length);
      for (let i = 0; i < resolved.transforms.length; ++i) {
        resolved.transforms[i] = geometry_msgs.msg.Transform.Resolve(msg.transforms[i]);
      }
    }
    else {
      resolved.transforms = []
    }

    return resolved;
    }
};

module.exports = {
  Request: LoopClosureRequest,
  Response: LoopClosureResponse,
  md5sum() { return '2bfd8abab66078a46d6c266f42293b3d'; },
  datatype() { return 'laser_mapper/LoopClosure'; }
};
