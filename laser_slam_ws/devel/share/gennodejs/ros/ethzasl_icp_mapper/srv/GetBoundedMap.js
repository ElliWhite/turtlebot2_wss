// Auto-generated. Do not edit!

// (in-package ethzasl_icp_mapper.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class GetBoundedMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapCenter = null;
      this.topRightCorner = null;
      this.bottomLeftCorner = null;
    }
    else {
      if (initObj.hasOwnProperty('mapCenter')) {
        this.mapCenter = initObj.mapCenter
      }
      else {
        this.mapCenter = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('topRightCorner')) {
        this.topRightCorner = initObj.topRightCorner
      }
      else {
        this.topRightCorner = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('bottomLeftCorner')) {
        this.bottomLeftCorner = initObj.bottomLeftCorner
      }
      else {
        this.bottomLeftCorner = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBoundedMapRequest
    // Serialize message field [mapCenter]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.mapCenter, buffer, bufferOffset);
    // Serialize message field [topRightCorner]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.topRightCorner, buffer, bufferOffset);
    // Serialize message field [bottomLeftCorner]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bottomLeftCorner, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBoundedMapRequest
    let len;
    let data = new GetBoundedMapRequest(null);
    // Deserialize message field [mapCenter]
    data.mapCenter = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [topRightCorner]
    data.topRightCorner = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [bottomLeftCorner]
    data.bottomLeftCorner = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethzasl_icp_mapper/GetBoundedMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cab119310bafad652e0154d699b10bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose mapCenter
    geometry_msgs/Point topRightCorner
    geometry_msgs/Point bottomLeftCorner
    
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
    const resolved = new GetBoundedMapRequest(null);
    if (msg.mapCenter !== undefined) {
      resolved.mapCenter = geometry_msgs.msg.Pose.Resolve(msg.mapCenter)
    }
    else {
      resolved.mapCenter = new geometry_msgs.msg.Pose()
    }

    if (msg.topRightCorner !== undefined) {
      resolved.topRightCorner = geometry_msgs.msg.Point.Resolve(msg.topRightCorner)
    }
    else {
      resolved.topRightCorner = new geometry_msgs.msg.Point()
    }

    if (msg.bottomLeftCorner !== undefined) {
      resolved.bottomLeftCorner = geometry_msgs.msg.Point.Resolve(msg.bottomLeftCorner)
    }
    else {
      resolved.bottomLeftCorner = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class GetBoundedMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.boundedMap = null;
    }
    else {
      if (initObj.hasOwnProperty('boundedMap')) {
        this.boundedMap = initObj.boundedMap
      }
      else {
        this.boundedMap = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBoundedMapResponse
    // Serialize message field [boundedMap]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.boundedMap, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBoundedMapResponse
    let len;
    let data = new GetBoundedMapResponse(null);
    // Deserialize message field [boundedMap]
    data.boundedMap = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.boundedMap);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ethzasl_icp_mapper/GetBoundedMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c809f43088f16711ab4f6616e444088';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 boundedMap
    
    
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
    const resolved = new GetBoundedMapResponse(null);
    if (msg.boundedMap !== undefined) {
      resolved.boundedMap = sensor_msgs.msg.PointCloud2.Resolve(msg.boundedMap)
    }
    else {
      resolved.boundedMap = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetBoundedMapRequest,
  Response: GetBoundedMapResponse,
  md5sum() { return 'b0e234493a48c4bf1205e62b5652f4e1'; },
  datatype() { return 'ethzasl_icp_mapper/GetBoundedMap'; }
};
