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

class WiFi_location {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ssid = null;
      this.rssi = null;
      this.xposition = null;
      this.yposition = null;
      this.zposition = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ssid')) {
        this.ssid = initObj.ssid
      }
      else {
        this.ssid = '';
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0.0;
      }
      if (initObj.hasOwnProperty('xposition')) {
        this.xposition = initObj.xposition
      }
      else {
        this.xposition = 0.0;
      }
      if (initObj.hasOwnProperty('yposition')) {
        this.yposition = initObj.yposition
      }
      else {
        this.yposition = 0.0;
      }
      if (initObj.hasOwnProperty('zposition')) {
        this.zposition = initObj.zposition
      }
      else {
        this.zposition = 0.0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WiFi_location
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ssid]
    bufferOffset = _serializer.string(obj.ssid, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _serializer.float32(obj.rssi, buffer, bufferOffset);
    // Serialize message field [xposition]
    bufferOffset = _serializer.float32(obj.xposition, buffer, bufferOffset);
    // Serialize message field [yposition]
    bufferOffset = _serializer.float32(obj.yposition, buffer, bufferOffset);
    // Serialize message field [zposition]
    bufferOffset = _serializer.float32(obj.zposition, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = _serializer.float32(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WiFi_location
    let len;
    let data = new WiFi_location(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ssid]
    data.ssid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xposition]
    data.xposition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yposition]
    data.yposition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zposition]
    data.zposition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.ssid.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wireless_network_msgs/WiFi_location';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94d5d3c9a19adc224442c55f1c86cff6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # SSID of the WiFi network
    string ssid 
    
    # Received Signal Strength (RSS) in dBm
    float32 rssi 
    
    # X Position of the robot
    float32 xposition
    
    # Y Positon of the robot
    float32 yposition
    
    # Z Position of the robot
    float32 zposition
    
    # Orientation of the robot (in radians) in robot frame
    float32 orientation
    
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
    const resolved = new WiFi_location(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ssid !== undefined) {
      resolved.ssid = msg.ssid;
    }
    else {
      resolved.ssid = ''
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0.0
    }

    if (msg.xposition !== undefined) {
      resolved.xposition = msg.xposition;
    }
    else {
      resolved.xposition = 0.0
    }

    if (msg.yposition !== undefined) {
      resolved.yposition = msg.yposition;
    }
    else {
      resolved.yposition = 0.0
    }

    if (msg.zposition !== undefined) {
      resolved.zposition = msg.zposition;
    }
    else {
      resolved.zposition = 0.0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = 0.0
    }

    return resolved;
    }
};

module.exports = WiFi_location;
