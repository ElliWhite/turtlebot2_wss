// Auto-generated. Do not edit!

// (in-package ethzasl_icp_mapper.srv)


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

class MatchCloudsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reference = null;
      this.readings = null;
    }
    else {
      if (initObj.hasOwnProperty('reference')) {
        this.reference = initObj.reference
      }
      else {
        this.reference = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('readings')) {
        this.readings = initObj.readings
      }
      else {
        this.readings = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MatchCloudsRequest
    // Serialize message field [reference]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.reference, buffer, bufferOffset);
    // Serialize message field [readings]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.readings, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MatchCloudsRequest
    let len;
    let data = new MatchCloudsRequest(null);
    // Deserialize message field [reference]
    data.reference = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [readings]
    data.readings = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.reference);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.readings);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethzasl_icp_mapper/MatchCloudsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c0945df9b4e88c1f6f45d0b43009748';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 reference
    sensor_msgs/PointCloud2 readings
    
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
    const resolved = new MatchCloudsRequest(null);
    if (msg.reference !== undefined) {
      resolved.reference = sensor_msgs.msg.PointCloud2.Resolve(msg.reference)
    }
    else {
      resolved.reference = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.readings !== undefined) {
      resolved.readings = sensor_msgs.msg.PointCloud2.Resolve(msg.readings)
    }
    else {
      resolved.readings = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

class MatchCloudsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform = null;
    }
    else {
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MatchCloudsResponse
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MatchCloudsResponse
    let len;
    let data = new MatchCloudsResponse(null);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethzasl_icp_mapper/MatchCloudsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2d1de03cf5b052350d875b7cfbc84a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Transform transform
    
    
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
    const resolved = new MatchCloudsResponse(null);
    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    return resolved;
    }
};

module.exports = {
  Request: MatchCloudsRequest,
  Response: MatchCloudsResponse,
  md5sum() { return '2d80ae9747b1317b7b969a4ee0f353c7'; },
  datatype() { return 'ethzasl_icp_mapper/MatchClouds'; }
};
