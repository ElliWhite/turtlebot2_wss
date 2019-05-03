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

class networkerrors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.retransmits = null;
      this.badsegments = null;
      this.udperrors = null;
      this.tx_retires = null;
      this.rx_dropped = null;
      this.nic_tx_errors = null;
      this.nic_rx_errors = null;
      this.nic_tx_dropped = null;
      this.nic_rx_dropped = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('retransmits')) {
        this.retransmits = initObj.retransmits
      }
      else {
        this.retransmits = 0;
      }
      if (initObj.hasOwnProperty('badsegments')) {
        this.badsegments = initObj.badsegments
      }
      else {
        this.badsegments = 0;
      }
      if (initObj.hasOwnProperty('udperrors')) {
        this.udperrors = initObj.udperrors
      }
      else {
        this.udperrors = 0;
      }
      if (initObj.hasOwnProperty('tx_retires')) {
        this.tx_retires = initObj.tx_retires
      }
      else {
        this.tx_retires = 0;
      }
      if (initObj.hasOwnProperty('rx_dropped')) {
        this.rx_dropped = initObj.rx_dropped
      }
      else {
        this.rx_dropped = 0;
      }
      if (initObj.hasOwnProperty('nic_tx_errors')) {
        this.nic_tx_errors = initObj.nic_tx_errors
      }
      else {
        this.nic_tx_errors = 0;
      }
      if (initObj.hasOwnProperty('nic_rx_errors')) {
        this.nic_rx_errors = initObj.nic_rx_errors
      }
      else {
        this.nic_rx_errors = 0;
      }
      if (initObj.hasOwnProperty('nic_tx_dropped')) {
        this.nic_tx_dropped = initObj.nic_tx_dropped
      }
      else {
        this.nic_tx_dropped = 0;
      }
      if (initObj.hasOwnProperty('nic_rx_dropped')) {
        this.nic_rx_dropped = initObj.nic_rx_dropped
      }
      else {
        this.nic_rx_dropped = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type networkerrors
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [retransmits]
    bufferOffset = _serializer.int64(obj.retransmits, buffer, bufferOffset);
    // Serialize message field [badsegments]
    bufferOffset = _serializer.int64(obj.badsegments, buffer, bufferOffset);
    // Serialize message field [udperrors]
    bufferOffset = _serializer.int64(obj.udperrors, buffer, bufferOffset);
    // Serialize message field [tx_retires]
    bufferOffset = _serializer.int64(obj.tx_retires, buffer, bufferOffset);
    // Serialize message field [rx_dropped]
    bufferOffset = _serializer.int64(obj.rx_dropped, buffer, bufferOffset);
    // Serialize message field [nic_tx_errors]
    bufferOffset = _serializer.int64(obj.nic_tx_errors, buffer, bufferOffset);
    // Serialize message field [nic_rx_errors]
    bufferOffset = _serializer.int64(obj.nic_rx_errors, buffer, bufferOffset);
    // Serialize message field [nic_tx_dropped]
    bufferOffset = _serializer.int64(obj.nic_tx_dropped, buffer, bufferOffset);
    // Serialize message field [nic_rx_dropped]
    bufferOffset = _serializer.int64(obj.nic_rx_dropped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type networkerrors
    let len;
    let data = new networkerrors(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [retransmits]
    data.retransmits = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [badsegments]
    data.badsegments = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [udperrors]
    data.udperrors = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [tx_retires]
    data.tx_retires = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rx_dropped]
    data.rx_dropped = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [nic_tx_errors]
    data.nic_tx_errors = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [nic_rx_errors]
    data.nic_rx_errors = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [nic_tx_dropped]
    data.nic_tx_dropped = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [nic_rx_dropped]
    data.nic_rx_dropped = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wireless_network_msgs/networkerrors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '235edb359781a06294f8b29034894b78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    #segment errors at (tcp) protocol level
    int64 retransmits
    int64 badsegments
    
    #errors in udp transmission
    int64 udperrors
    
    #system level (MAC layer) errors
    int64 tx_retires
    int64 rx_dropped
    
    
    #interface level (NIC statistics) errors
    int64 nic_tx_errors
    int64 nic_rx_errors
    int64 nic_tx_dropped
    int64 nic_rx_dropped
    
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
    const resolved = new networkerrors(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.retransmits !== undefined) {
      resolved.retransmits = msg.retransmits;
    }
    else {
      resolved.retransmits = 0
    }

    if (msg.badsegments !== undefined) {
      resolved.badsegments = msg.badsegments;
    }
    else {
      resolved.badsegments = 0
    }

    if (msg.udperrors !== undefined) {
      resolved.udperrors = msg.udperrors;
    }
    else {
      resolved.udperrors = 0
    }

    if (msg.tx_retires !== undefined) {
      resolved.tx_retires = msg.tx_retires;
    }
    else {
      resolved.tx_retires = 0
    }

    if (msg.rx_dropped !== undefined) {
      resolved.rx_dropped = msg.rx_dropped;
    }
    else {
      resolved.rx_dropped = 0
    }

    if (msg.nic_tx_errors !== undefined) {
      resolved.nic_tx_errors = msg.nic_tx_errors;
    }
    else {
      resolved.nic_tx_errors = 0
    }

    if (msg.nic_rx_errors !== undefined) {
      resolved.nic_rx_errors = msg.nic_rx_errors;
    }
    else {
      resolved.nic_rx_errors = 0
    }

    if (msg.nic_tx_dropped !== undefined) {
      resolved.nic_tx_dropped = msg.nic_tx_dropped;
    }
    else {
      resolved.nic_tx_dropped = 0
    }

    if (msg.nic_rx_dropped !== undefined) {
      resolved.nic_rx_dropped = msg.nic_rx_dropped;
    }
    else {
      resolved.nic_rx_dropped = 0
    }

    return resolved;
    }
};

module.exports = networkerrors;
