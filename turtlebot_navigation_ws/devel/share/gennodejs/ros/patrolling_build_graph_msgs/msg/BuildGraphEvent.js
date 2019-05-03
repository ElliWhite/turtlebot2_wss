// Auto-generated. Do not edit!

// (in-package patrolling_build_graph_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BuildGraphEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.event = null;
    }
    else {
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BuildGraphEvent
    // Serialize message field [event]
    bufferOffset = _serializer.uint8(obj.event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BuildGraphEvent
    let len;
    let data = new BuildGraphEvent(null);
    // Deserialize message field [event]
    data.event = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'patrolling_build_graph_msgs/BuildGraphEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3da7b66974d2acb49f04c8e9d05dd91f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 START_PATROLLING=0  # waiting for graph 
    uint8 GRAPH_BUILT=1       # graph built on the same computer 
    uint8 STOP_PATROLLING=2    
    uint8 GRAPH_RECEIVED=3    # graph received through message 
    uint8 event
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BuildGraphEvent(null);
    if (msg.event !== undefined) {
      resolved.event = msg.event;
    }
    else {
      resolved.event = 0
    }

    return resolved;
    }
};

// Constants for message
BuildGraphEvent.Constants = {
  START_PATROLLING: 0,
  GRAPH_BUILT: 1,
  STOP_PATROLLING: 2,
  GRAPH_RECEIVED: 3,
}

module.exports = BuildGraphEvent;
