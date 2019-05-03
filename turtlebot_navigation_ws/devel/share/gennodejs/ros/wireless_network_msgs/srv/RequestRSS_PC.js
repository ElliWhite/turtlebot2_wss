// Auto-generated. Do not edit!

// (in-package wireless_network_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RequestRSS_PCRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.surveypoints = null;
      this.max_point_requested = null;
    }
    else {
      if (initObj.hasOwnProperty('surveypoints')) {
        this.surveypoints = initObj.surveypoints
      }
      else {
        this.surveypoints = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('max_point_requested')) {
        this.max_point_requested = initObj.max_point_requested
      }
      else {
        this.max_point_requested = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestRSS_PCRequest
    // Serialize message field [surveypoints]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.surveypoints, buffer, bufferOffset);
    // Serialize message field [max_point_requested]
    bufferOffset = _serializer.bool(obj.max_point_requested, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestRSS_PCRequest
    let len;
    let data = new RequestRSS_PCRequest(null);
    // Deserialize message field [surveypoints]
    data.surveypoints = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_point_requested]
    data.max_point_requested = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.surveypoints);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wireless_network_msgs/RequestRSS_PCRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20a8fb0086875fdc82e585c9185fd052';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    sensor_msgs/PointCloud2 surveypoints
    bool max_point_requested
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
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
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestRSS_PCRequest(null);
    if (msg.surveypoints !== undefined) {
      resolved.surveypoints = sensor_msgs.msg.PointCloud2.Resolve(msg.surveypoints)
    }
    else {
      resolved.surveypoints = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.max_point_requested !== undefined) {
      resolved.max_point_requested = msg.max_point_requested;
    }
    else {
      resolved.max_point_requested = false
    }

    return resolved;
    }
};

class RequestRSS_PCResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rssi = null;
      this.max_point = null;
    }
    else {
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('max_point')) {
        this.max_point = initObj.max_point
      }
      else {
        this.max_point = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestRSS_PCResponse
    // Serialize message field [rssi]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.rssi, buffer, bufferOffset);
    // Serialize message field [max_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.max_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestRSS_PCResponse
    let len;
    let data = new RequestRSS_PCResponse(null);
    // Deserialize message field [rssi]
    data.rssi = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_point]
    data.max_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.rssi);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wireless_network_msgs/RequestRSS_PCResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d33a0c3150b09b885b5f00911eea745';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    sensor_msgs/PointCloud2 rssi
    geometry_msgs/Point max_point
    
    
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
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
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new RequestRSS_PCResponse(null);
    if (msg.rssi !== undefined) {
      resolved.rssi = sensor_msgs.msg.PointCloud2.Resolve(msg.rssi)
    }
    else {
      resolved.rssi = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.max_point !== undefined) {
      resolved.max_point = geometry_msgs.msg.Point.Resolve(msg.max_point)
    }
    else {
      resolved.max_point = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestRSS_PCRequest,
  Response: RequestRSS_PCResponse,
  md5sum() { return '5c2bbf57008d143c633c6f0ef62d113b'; },
  datatype() { return 'wireless_network_msgs/RequestRSS_PC'; }
};
