// Auto-generated. Do not edit!

// (in-package wireless_network_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class networkdelay {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rtt = null;
      this.delay = null;
      this.alive = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rtt')) {
        this.rtt = initObj.rtt
      }
      else {
        this.rtt = 0;
      }
      if (initObj.hasOwnProperty('delay')) {
        this.delay = initObj.delay
      }
      else {
        this.delay = 0;
      }
      if (initObj.hasOwnProperty('alive')) {
        this.alive = initObj.alive
      }
      else {
        this.alive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type networkdelay
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rtt]
    bufferOffset = _serializer.int32(obj.rtt, buffer, bufferOffset);
    // Serialize message field [delay]
    bufferOffset = _serializer.int32(obj.delay, buffer, bufferOffset);
    // Serialize message field [alive]
    bufferOffset = _serializer.bool(obj.alive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type networkdelay
    let len;
    let data = new networkdelay(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rtt]
    data.rtt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [delay]
    data.delay = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alive]
    data.alive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wireless_network_msgs/networkdelay';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1e2e10f6c6d892071c552e7897b2292';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    #round trip time (rtt) obtained using "ping" with ICMO echo request
    int32 rtt
    
    #network delay obtained directly at the application level (ros service call)
    int32 delay
    
    #Flag to check if the link is alive or dead
    bool alive
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new networkdelay(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rtt !== undefined) {
      resolved.rtt = msg.rtt;
    }
    else {
      resolved.rtt = 0
    }

    if (msg.delay !== undefined) {
      resolved.delay = msg.delay;
    }
    else {
      resolved.delay = 0
    }

    if (msg.alive !== undefined) {
      resolved.alive = msg.alive;
    }
    else {
      resolved.alive = false
    }

    return resolved;
    }
};

module.exports = networkdelay;
