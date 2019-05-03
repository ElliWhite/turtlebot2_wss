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

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class InitialTransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform_map_marker = null;
    }
    else {
      if (initObj.hasOwnProperty('transform_map_marker')) {
        this.transform_map_marker = initObj.transform_map_marker
      }
      else {
        this.transform_map_marker = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitialTransformRequest
    // Serialize message field [transform_map_marker]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.transform_map_marker, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitialTransformRequest
    let len;
    let data = new InitialTransformRequest(null);
    // Deserialize message field [transform_map_marker]
    data.transform_map_marker = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_mapper/InitialTransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0a47e43e92839015c75434340288ae5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Pose transform_map_marker
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new InitialTransformRequest(null);
    if (msg.transform_map_marker !== undefined) {
      resolved.transform_map_marker = geometry_msgs.msg.Pose.Resolve(msg.transform_map_marker)
    }
    else {
      resolved.transform_map_marker = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class InitialTransformResponse {
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
        this.success = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitialTransformResponse
    // Serialize message field [success]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitialTransformResponse
    let len;
    let data = new InitialTransformResponse(null);
    // Deserialize message field [success]
    data.success = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_mapper/InitialTransformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f31cb2e813cfb0e488c574c3b5d9dbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Bool success
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitialTransformResponse(null);
    if (msg.success !== undefined) {
      resolved.success = std_msgs.msg.Bool.Resolve(msg.success)
    }
    else {
      resolved.success = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = {
  Request: InitialTransformRequest,
  Response: InitialTransformResponse,
  md5sum() { return 'ed4c4e4224ec161139370ee82d9ed7da'; },
  datatype() { return 'laser_mapper/InitialTransform'; }
};
