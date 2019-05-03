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

class wirelesslink {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rssi = null;
      this.lqi = null;
      this.noise = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0.0;
      }
      if (initObj.hasOwnProperty('lqi')) {
        this.lqi = initObj.lqi
      }
      else {
        this.lqi = 0;
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wirelesslink
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _serializer.float32(obj.rssi, buffer, bufferOffset);
    // Serialize message field [lqi]
    bufferOffset = _serializer.int32(obj.lqi, buffer, bufferOffset);
    // Serialize message field [noise]
    bufferOffset = _serializer.int32(obj.noise, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wirelesslink
    let len;
    let data = new wirelesslink(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lqi]
    data.lqi = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [noise]
    data.noise = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.id.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wireless_network_msgs/wirelesslink';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b66245439f6c497dfd55043e8bf4332e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    #Received Signal Strength (RSS) in dBm
    float32 rssi
    
    #Link Quality of the wireless link in percentage
    int32 lqi
    
    #Noise floor of the wireless link in dBm (only very few NICs provide this correctly)
    int32 noise
    
    #Source id - either AP name, or SSID or the mac address
    string id
    
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
    const resolved = new wirelesslink(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0.0
    }

    if (msg.lqi !== undefined) {
      resolved.lqi = msg.lqi;
    }
    else {
      resolved.lqi = 0
    }

    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    return resolved;
    }
};

module.exports = wirelesslink;
