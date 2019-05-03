// Auto-generated. Do not edit!

// (in-package laser_mapper.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class GetLaserTrackSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLaserTrackSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLaserTrackSrvRequest
    let len;
    let data = new GetLaserTrackSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_mapper/GetLaserTrackSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetLaserTrackSrvRequest(null);
    return resolved;
    }
};

class GetLaserTrackSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.laser_scans = null;
      this.transforms = null;
    }
    else {
      if (initObj.hasOwnProperty('laser_scans')) {
        this.laser_scans = initObj.laser_scans
      }
      else {
        this.laser_scans = [];
      }
      if (initObj.hasOwnProperty('transforms')) {
        this.transforms = initObj.transforms
      }
      else {
        this.transforms = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLaserTrackSrvResponse
    // Serialize message field [laser_scans]
    // Serialize the length for message field [laser_scans]
    bufferOffset = _serializer.uint32(obj.laser_scans.length, buffer, bufferOffset);
    obj.laser_scans.forEach((val) => {
      bufferOffset = sensor_msgs.msg.PointCloud2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [transforms]
    // Serialize the length for message field [transforms]
    bufferOffset = _serializer.uint32(obj.transforms.length, buffer, bufferOffset);
    obj.transforms.forEach((val) => {
      bufferOffset = geometry_msgs.msg.TransformStamped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLaserTrackSrvResponse
    let len;
    let data = new GetLaserTrackSrvResponse(null);
    // Deserialize message field [laser_scans]
    // Deserialize array length for message field [laser_scans]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.laser_scans = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.laser_scans[i] = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [transforms]
    // Deserialize array length for message field [transforms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.transforms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.transforms[i] = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.laser_scans.forEach((val) => {
      length += sensor_msgs.msg.PointCloud2.getMessageSize(val);
    });
    object.transforms.forEach((val) => {
      length += geometry_msgs.msg.TransformStamped.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'laser_mapper/GetLaserTrackSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8c9b713ee42e20fb731eb3adffef133';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    sensor_msgs/PointCloud2[] laser_scans
    
    geometry_msgs/TransformStamped[] transforms
    
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
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    const resolved = new GetLaserTrackSrvResponse(null);
    if (msg.laser_scans !== undefined) {
      resolved.laser_scans = new Array(msg.laser_scans.length);
      for (let i = 0; i < resolved.laser_scans.length; ++i) {
        resolved.laser_scans[i] = sensor_msgs.msg.PointCloud2.Resolve(msg.laser_scans[i]);
      }
    }
    else {
      resolved.laser_scans = []
    }

    if (msg.transforms !== undefined) {
      resolved.transforms = new Array(msg.transforms.length);
      for (let i = 0; i < resolved.transforms.length; ++i) {
        resolved.transforms[i] = geometry_msgs.msg.TransformStamped.Resolve(msg.transforms[i]);
      }
    }
    else {
      resolved.transforms = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetLaserTrackSrvRequest,
  Response: GetLaserTrackSrvResponse,
  md5sum() { return 'f8c9b713ee42e20fb731eb3adffef133'; },
  datatype() { return 'laser_mapper/GetLaserTrackSrv'; }
};
