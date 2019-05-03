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


//-----------------------------------------------------------

class RequestRSS_Save_PCRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.surveypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('surveypoints')) {
        this.surveypoints = initObj.surveypoints
      }
      else {
        this.surveypoints = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestRSS_Save_PCRequest
    // Serialize message field [surveypoints]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.surveypoints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestRSS_Save_PCRequest
    let len;
    let data = new RequestRSS_Save_PCRequest(null);
    // Deserialize message field [surveypoints]
    data.surveypoints = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.surveypoints);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wireless_network_msgs/RequestRSS_Save_PCRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c05d79e5c941b2bc360a9e16ee1f1c06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    sensor_msgs/PointCloud2 surveypoints
    
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
    const resolved = new RequestRSS_Save_PCRequest(null);
    if (msg.surveypoints !== undefined) {
      resolved.surveypoints = sensor_msgs.msg.PointCloud2.Resolve(msg.surveypoints)
    }
    else {
      resolved.surveypoints = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

class RequestRSS_Save_PCResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestRSS_Save_PCResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestRSS_Save_PCResponse
    let len;
    let data = new RequestRSS_Save_PCResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wireless_network_msgs/RequestRSS_Save_PCResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool status
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestRSS_Save_PCResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestRSS_Save_PCRequest,
  Response: RequestRSS_Save_PCResponse,
  md5sum() { return 'be35b97a626a98d93d3670b842cadba3'; },
  datatype() { return 'wireless_network_msgs/RequestRSS_Save_PC'; }
};
