// Auto-generated. Do not edit!

// (in-package trajectory_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlanningTask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.segment_id = null;
      this.segment_count = null;
      this.type = null;
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('segment_id')) {
        this.segment_id = initObj.segment_id
      }
      else {
        this.segment_id = 0;
      }
      if (initObj.hasOwnProperty('segment_count')) {
        this.segment_count = initObj.segment_count
      }
      else {
        this.segment_count = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningTask
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [segment_id]
    bufferOffset = _serializer.int32(obj.segment_id, buffer, bufferOffset);
    // Serialize message field [segment_count]
    bufferOffset = _serializer.int32(obj.segment_count, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningTask
    let len;
    let data = new PlanningTask(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [segment_id]
    data.segment_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [segment_count]
    data.segment_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += 24 * object.waypoints.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trajectory_control_msgs/PlanningTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2021ccde8231d7f64ad6cc286e585b51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string name                      # task name; a planning task is a vector of task-segments; a task-segment is composed by a start and a goal (two points). 
    int32 segment_id                 # 
    int32 segment_count              # count number of waypoints inside the task
    uint8  type                      # NORMAL=0, CYCLIC = 1
    geometry_msgs/Point[] waypoints  # array of waypoints
    
    
    
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
    const resolved = new PlanningTask(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.segment_id !== undefined) {
      resolved.segment_id = msg.segment_id;
    }
    else {
      resolved.segment_id = 0
    }

    if (msg.segment_count !== undefined) {
      resolved.segment_count = msg.segment_count;
    }
    else {
      resolved.segment_count = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = geometry_msgs.msg.Point.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

module.exports = PlanningTask;
