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

class PlanningFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.node = null;
      this.task = null;
      this.action = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = '';
      }
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = '';
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningFeedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [node]
    bufferOffset = _serializer.string(obj.node, buffer, bufferOffset);
    // Serialize message field [task]
    bufferOffset = _serializer.string(obj.task, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.int8(obj.action, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningFeedback
    let len;
    let data = new PlanningFeedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [node]
    data.node = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task]
    data.task = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.node.length;
    length += object.task.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trajectory_control_msgs/PlanningFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03a7f5d00dedecdfea4db265876ab92c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string node   # identifies the node advertising the message: "control" (controller), "planner" (queue planner) or "tool" (rviz waypoints tool)
    string task   # the task name (convention: TaskX, X number of the task)
    int8 action   # the action performed on the task 
    int8 status   # STATUS_FAILURE = -1, STATUS_PLANNING = 0, STATUS_SUCCESS = 1
    
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
    const resolved = new PlanningFeedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = ''
    }

    if (msg.task !== undefined) {
      resolved.task = msg.task;
    }
    else {
      resolved.task = ''
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = PlanningFeedback;
