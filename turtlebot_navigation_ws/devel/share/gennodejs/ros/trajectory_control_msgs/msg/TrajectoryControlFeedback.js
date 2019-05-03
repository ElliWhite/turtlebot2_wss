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
let nifti_robot_driver_msgs = _finder('nifti_robot_driver_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TrajectoryControlFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestep = null;
      this.cmd_vel = null;
      this.tracks_cmd = null;
      this.posture_cmd = null;
      this.flippers_state = null;
      this.trajectory_error = null;
      this.virtual_reference_pose = null;
      this.robot_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('timestep')) {
        this.timestep = initObj.timestep
      }
      else {
        this.timestep = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_vel')) {
        this.cmd_vel = initObj.cmd_vel
      }
      else {
        this.cmd_vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('tracks_cmd')) {
        this.tracks_cmd = initObj.tracks_cmd
      }
      else {
        this.tracks_cmd = new nifti_robot_driver_msgs.msg.Tracks();
      }
      if (initObj.hasOwnProperty('posture_cmd')) {
        this.posture_cmd = initObj.posture_cmd
      }
      else {
        this.posture_cmd = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('flippers_state')) {
        this.flippers_state = initObj.flippers_state
      }
      else {
        this.flippers_state = new nifti_robot_driver_msgs.msg.FlippersStateStamped();
      }
      if (initObj.hasOwnProperty('trajectory_error')) {
        this.trajectory_error = initObj.trajectory_error
      }
      else {
        this.trajectory_error = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('virtual_reference_pose')) {
        this.virtual_reference_pose = initObj.virtual_reference_pose
      }
      else {
        this.virtual_reference_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('robot_pose')) {
        this.robot_pose = initObj.robot_pose
      }
      else {
        this.robot_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryControlFeedback
    // Serialize message field [timestep]
    bufferOffset = _serializer.float64(obj.timestep, buffer, bufferOffset);
    // Serialize message field [cmd_vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.cmd_vel, buffer, bufferOffset);
    // Serialize message field [tracks_cmd]
    bufferOffset = nifti_robot_driver_msgs.msg.Tracks.serialize(obj.tracks_cmd, buffer, bufferOffset);
    // Serialize message field [posture_cmd]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.posture_cmd, buffer, bufferOffset);
    // Serialize message field [flippers_state]
    bufferOffset = nifti_robot_driver_msgs.msg.FlippersStateStamped.serialize(obj.flippers_state, buffer, bufferOffset);
    // Serialize message field [trajectory_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.trajectory_error, buffer, bufferOffset);
    // Serialize message field [virtual_reference_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.virtual_reference_pose, buffer, bufferOffset);
    // Serialize message field [robot_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.robot_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryControlFeedback
    let len;
    let data = new TrajectoryControlFeedback(null);
    // Deserialize message field [timestep]
    data.timestep = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_vel]
    data.cmd_vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracks_cmd]
    data.tracks_cmd = nifti_robot_driver_msgs.msg.Tracks.deserialize(buffer, bufferOffset);
    // Deserialize message field [posture_cmd]
    data.posture_cmd = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [flippers_state]
    data.flippers_state = nifti_robot_driver_msgs.msg.FlippersStateStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_error]
    data.trajectory_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [virtual_reference_pose]
    data.virtual_reference_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_pose]
    data.robot_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nifti_robot_driver_msgs.msg.FlippersStateStamped.getMessageSize(object.flippers_state);
    return length + 212;
  }

  static datatype() {
    // Returns string type for a message object
    return 'trajectory_control_msgs/TrajectoryControlFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4b7f31196641b87a18ac352f6126a78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define a feedback message
    float64 timestep
    geometry_msgs/Twist cmd_vel
    nifti_robot_driver_msgs/Tracks tracks_cmd
    std_msgs/Int32 posture_cmd
    nifti_robot_driver_msgs/FlippersStateStamped flippers_state
    geometry_msgs/Vector3 trajectory_error
    geometry_msgs/Pose virtual_reference_pose
    geometry_msgs/Pose robot_pose
    
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    MSG: nifti_robot_driver_msgs/Tracks
    float64 left
    float64 right
    
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: nifti_robot_driver_msgs/FlippersStateStamped
    Header header
    float64 frontLeft
    float64 frontRight
    float64 rearLeft
    float64 rearRight
    
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
    const resolved = new TrajectoryControlFeedback(null);
    if (msg.timestep !== undefined) {
      resolved.timestep = msg.timestep;
    }
    else {
      resolved.timestep = 0.0
    }

    if (msg.cmd_vel !== undefined) {
      resolved.cmd_vel = geometry_msgs.msg.Twist.Resolve(msg.cmd_vel)
    }
    else {
      resolved.cmd_vel = new geometry_msgs.msg.Twist()
    }

    if (msg.tracks_cmd !== undefined) {
      resolved.tracks_cmd = nifti_robot_driver_msgs.msg.Tracks.Resolve(msg.tracks_cmd)
    }
    else {
      resolved.tracks_cmd = new nifti_robot_driver_msgs.msg.Tracks()
    }

    if (msg.posture_cmd !== undefined) {
      resolved.posture_cmd = std_msgs.msg.Int32.Resolve(msg.posture_cmd)
    }
    else {
      resolved.posture_cmd = new std_msgs.msg.Int32()
    }

    if (msg.flippers_state !== undefined) {
      resolved.flippers_state = nifti_robot_driver_msgs.msg.FlippersStateStamped.Resolve(msg.flippers_state)
    }
    else {
      resolved.flippers_state = new nifti_robot_driver_msgs.msg.FlippersStateStamped()
    }

    if (msg.trajectory_error !== undefined) {
      resolved.trajectory_error = geometry_msgs.msg.Vector3.Resolve(msg.trajectory_error)
    }
    else {
      resolved.trajectory_error = new geometry_msgs.msg.Vector3()
    }

    if (msg.virtual_reference_pose !== undefined) {
      resolved.virtual_reference_pose = geometry_msgs.msg.Pose.Resolve(msg.virtual_reference_pose)
    }
    else {
      resolved.virtual_reference_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.robot_pose !== undefined) {
      resolved.robot_pose = geometry_msgs.msg.Pose.Resolve(msg.robot_pose)
    }
    else {
      resolved.robot_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = TrajectoryControlFeedback;
