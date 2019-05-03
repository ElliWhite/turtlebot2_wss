// Auto-generated. Do not edit!

// (in-package trajectory_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlanningStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.success = null;
      this.status = null;
      this.path_cost = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('path_cost')) {
        this.path_cost = initObj.path_cost
      }
      else {
        this.path_cost = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [path_cost]
    bufferOffset = _serializer.float64(obj.path_cost, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningStatus
    let len;
    let data = new PlanningStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [path_cost]
    data.path_cost = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trajectory_control_msgs/PlanningStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '084e09d6e48ac8e8b97fe72e6fc78fb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 kNone             = 0
    uint8 kNotReady         = 1  
    uint8 kInputFailure     = 2 
    uint8 kFailure          = 3
    uint8 kSuccess          = 4
    uint8 kArrived          = 5
    uint8 kAborted          = 6
    uint8 kTransformFailure = 7
    uint8 kFirstSuccess     = 8
    
    std_msgs/Header header
    bool success                   # result of the path planner: false in case a solution was not found for some reason, true otherwise
    uint8 status		       # status type: detailed status of the path planner (use one of the constants above )
    float64 path_cost	       # cost of the planned path: "< 0" means invalid
    
    
    
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
    const resolved = new PlanningStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.path_cost !== undefined) {
      resolved.path_cost = msg.path_cost;
    }
    else {
      resolved.path_cost = 0.0
    }

    return resolved;
    }
};

// Constants for message
PlanningStatus.Constants = {
  KNONE: 0,
  KNOTREADY: 1,
  KINPUTFAILURE: 2,
  KFAILURE: 3,
  KSUCCESS: 4,
  KARRIVED: 5,
  KABORTED: 6,
  KTRANSFORMFAILURE: 7,
  KFIRSTSUCCESS: 8,
}

module.exports = PlanningStatus;
