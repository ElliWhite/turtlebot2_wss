// Auto-generated. Do not edit!

// (in-package networkanalysis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class linkutilization {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tcp_tx_segments = null;
      this.tcp_rx_segments = null;
      this.tcp_tx_segmentrate = null;
      this.tcp_rx_segmentrate = null;
      this.udp_tx_datagrams = null;
      this.udp_rx_datagrams = null;
      this.udp_tx_datagramrate = null;
      this.udp_rx_datagramrate = null;
      this.total_tx_packets = null;
      this.total_tx_bytes = null;
      this.total_rx_packets = null;
      this.total_rx_bytes = null;
      this.total_tx_mbps = null;
      this.total_rx_mbps = null;
    }
    else {
      if (initObj.hasOwnProperty('tcp_tx_segments')) {
        this.tcp_tx_segments = initObj.tcp_tx_segments
      }
      else {
        this.tcp_tx_segments = 0;
      }
      if (initObj.hasOwnProperty('tcp_rx_segments')) {
        this.tcp_rx_segments = initObj.tcp_rx_segments
      }
      else {
        this.tcp_rx_segments = 0;
      }
      if (initObj.hasOwnProperty('tcp_tx_segmentrate')) {
        this.tcp_tx_segmentrate = initObj.tcp_tx_segmentrate
      }
      else {
        this.tcp_tx_segmentrate = 0.0;
      }
      if (initObj.hasOwnProperty('tcp_rx_segmentrate')) {
        this.tcp_rx_segmentrate = initObj.tcp_rx_segmentrate
      }
      else {
        this.tcp_rx_segmentrate = 0.0;
      }
      if (initObj.hasOwnProperty('udp_tx_datagrams')) {
        this.udp_tx_datagrams = initObj.udp_tx_datagrams
      }
      else {
        this.udp_tx_datagrams = 0;
      }
      if (initObj.hasOwnProperty('udp_rx_datagrams')) {
        this.udp_rx_datagrams = initObj.udp_rx_datagrams
      }
      else {
        this.udp_rx_datagrams = 0;
      }
      if (initObj.hasOwnProperty('udp_tx_datagramrate')) {
        this.udp_tx_datagramrate = initObj.udp_tx_datagramrate
      }
      else {
        this.udp_tx_datagramrate = 0.0;
      }
      if (initObj.hasOwnProperty('udp_rx_datagramrate')) {
        this.udp_rx_datagramrate = initObj.udp_rx_datagramrate
      }
      else {
        this.udp_rx_datagramrate = 0.0;
      }
      if (initObj.hasOwnProperty('total_tx_packets')) {
        this.total_tx_packets = initObj.total_tx_packets
      }
      else {
        this.total_tx_packets = 0;
      }
      if (initObj.hasOwnProperty('total_tx_bytes')) {
        this.total_tx_bytes = initObj.total_tx_bytes
      }
      else {
        this.total_tx_bytes = 0;
      }
      if (initObj.hasOwnProperty('total_rx_packets')) {
        this.total_rx_packets = initObj.total_rx_packets
      }
      else {
        this.total_rx_packets = 0;
      }
      if (initObj.hasOwnProperty('total_rx_bytes')) {
        this.total_rx_bytes = initObj.total_rx_bytes
      }
      else {
        this.total_rx_bytes = 0;
      }
      if (initObj.hasOwnProperty('total_tx_mbps')) {
        this.total_tx_mbps = initObj.total_tx_mbps
      }
      else {
        this.total_tx_mbps = 0.0;
      }
      if (initObj.hasOwnProperty('total_rx_mbps')) {
        this.total_rx_mbps = initObj.total_rx_mbps
      }
      else {
        this.total_rx_mbps = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type linkutilization
    // Serialize message field [tcp_tx_segments]
    bufferOffset = _serializer.int64(obj.tcp_tx_segments, buffer, bufferOffset);
    // Serialize message field [tcp_rx_segments]
    bufferOffset = _serializer.int64(obj.tcp_rx_segments, buffer, bufferOffset);
    // Serialize message field [tcp_tx_segmentrate]
    bufferOffset = _serializer.float64(obj.tcp_tx_segmentrate, buffer, bufferOffset);
    // Serialize message field [tcp_rx_segmentrate]
    bufferOffset = _serializer.float64(obj.tcp_rx_segmentrate, buffer, bufferOffset);
    // Serialize message field [udp_tx_datagrams]
    bufferOffset = _serializer.int64(obj.udp_tx_datagrams, buffer, bufferOffset);
    // Serialize message field [udp_rx_datagrams]
    bufferOffset = _serializer.int64(obj.udp_rx_datagrams, buffer, bufferOffset);
    // Serialize message field [udp_tx_datagramrate]
    bufferOffset = _serializer.float64(obj.udp_tx_datagramrate, buffer, bufferOffset);
    // Serialize message field [udp_rx_datagramrate]
    bufferOffset = _serializer.float64(obj.udp_rx_datagramrate, buffer, bufferOffset);
    // Serialize message field [total_tx_packets]
    bufferOffset = _serializer.int64(obj.total_tx_packets, buffer, bufferOffset);
    // Serialize message field [total_tx_bytes]
    bufferOffset = _serializer.int64(obj.total_tx_bytes, buffer, bufferOffset);
    // Serialize message field [total_rx_packets]
    bufferOffset = _serializer.int64(obj.total_rx_packets, buffer, bufferOffset);
    // Serialize message field [total_rx_bytes]
    bufferOffset = _serializer.int64(obj.total_rx_bytes, buffer, bufferOffset);
    // Serialize message field [total_tx_mbps]
    bufferOffset = _serializer.float64(obj.total_tx_mbps, buffer, bufferOffset);
    // Serialize message field [total_rx_mbps]
    bufferOffset = _serializer.float64(obj.total_rx_mbps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type linkutilization
    let len;
    let data = new linkutilization(null);
    // Deserialize message field [tcp_tx_segments]
    data.tcp_tx_segments = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [tcp_rx_segments]
    data.tcp_rx_segments = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [tcp_tx_segmentrate]
    data.tcp_tx_segmentrate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tcp_rx_segmentrate]
    data.tcp_rx_segmentrate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [udp_tx_datagrams]
    data.udp_tx_datagrams = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [udp_rx_datagrams]
    data.udp_rx_datagrams = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [udp_tx_datagramrate]
    data.udp_tx_datagramrate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [udp_rx_datagramrate]
    data.udp_rx_datagramrate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [total_tx_packets]
    data.total_tx_packets = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [total_tx_bytes]
    data.total_tx_bytes = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [total_rx_packets]
    data.total_rx_packets = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [total_rx_bytes]
    data.total_rx_bytes = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [total_tx_mbps]
    data.total_tx_mbps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [total_rx_mbps]
    data.total_rx_mbps = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'networkanalysis_msgs/linkutilization';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68677103f00920dc284ac20df3aa3180';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #TCP related information on link utilization for a given (NIC) interface
    int64 tcp_tx_segments
    int64 tcp_rx_segments
    float64 tcp_tx_segmentrate
    float64 tcp_rx_segmentrate
    
    #UDP related information on link utilization for a given (NIC) interface
    int64 udp_tx_datagrams
    int64 udp_rx_datagrams
    float64 udp_tx_datagramrate
    float64 udp_rx_datagramrate
    
    #Total (IP: TCP + UDP) link utilization for a given (NIC) interface
    int64 total_tx_packets
    int64 total_tx_bytes
    int64 total_rx_packets
    int64 total_rx_bytes
    float64 total_tx_mbps
    float64 total_rx_mbps
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new linkutilization(null);
    if (msg.tcp_tx_segments !== undefined) {
      resolved.tcp_tx_segments = msg.tcp_tx_segments;
    }
    else {
      resolved.tcp_tx_segments = 0
    }

    if (msg.tcp_rx_segments !== undefined) {
      resolved.tcp_rx_segments = msg.tcp_rx_segments;
    }
    else {
      resolved.tcp_rx_segments = 0
    }

    if (msg.tcp_tx_segmentrate !== undefined) {
      resolved.tcp_tx_segmentrate = msg.tcp_tx_segmentrate;
    }
    else {
      resolved.tcp_tx_segmentrate = 0.0
    }

    if (msg.tcp_rx_segmentrate !== undefined) {
      resolved.tcp_rx_segmentrate = msg.tcp_rx_segmentrate;
    }
    else {
      resolved.tcp_rx_segmentrate = 0.0
    }

    if (msg.udp_tx_datagrams !== undefined) {
      resolved.udp_tx_datagrams = msg.udp_tx_datagrams;
    }
    else {
      resolved.udp_tx_datagrams = 0
    }

    if (msg.udp_rx_datagrams !== undefined) {
      resolved.udp_rx_datagrams = msg.udp_rx_datagrams;
    }
    else {
      resolved.udp_rx_datagrams = 0
    }

    if (msg.udp_tx_datagramrate !== undefined) {
      resolved.udp_tx_datagramrate = msg.udp_tx_datagramrate;
    }
    else {
      resolved.udp_tx_datagramrate = 0.0
    }

    if (msg.udp_rx_datagramrate !== undefined) {
      resolved.udp_rx_datagramrate = msg.udp_rx_datagramrate;
    }
    else {
      resolved.udp_rx_datagramrate = 0.0
    }

    if (msg.total_tx_packets !== undefined) {
      resolved.total_tx_packets = msg.total_tx_packets;
    }
    else {
      resolved.total_tx_packets = 0
    }

    if (msg.total_tx_bytes !== undefined) {
      resolved.total_tx_bytes = msg.total_tx_bytes;
    }
    else {
      resolved.total_tx_bytes = 0
    }

    if (msg.total_rx_packets !== undefined) {
      resolved.total_rx_packets = msg.total_rx_packets;
    }
    else {
      resolved.total_rx_packets = 0
    }

    if (msg.total_rx_bytes !== undefined) {
      resolved.total_rx_bytes = msg.total_rx_bytes;
    }
    else {
      resolved.total_rx_bytes = 0
    }

    if (msg.total_tx_mbps !== undefined) {
      resolved.total_tx_mbps = msg.total_tx_mbps;
    }
    else {
      resolved.total_tx_mbps = 0.0
    }

    if (msg.total_rx_mbps !== undefined) {
      resolved.total_rx_mbps = msg.total_rx_mbps;
    }
    else {
      resolved.total_rx_mbps = 0.0
    }

    return resolved;
    }
};

module.exports = linkutilization;
