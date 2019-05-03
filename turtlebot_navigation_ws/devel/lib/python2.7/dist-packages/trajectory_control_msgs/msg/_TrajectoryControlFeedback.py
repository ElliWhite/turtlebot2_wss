# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from trajectory_control_msgs/TrajectoryControlFeedback.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import nifti_robot_driver_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class TrajectoryControlFeedback(genpy.Message):
  _md5sum = "a4b7f31196641b87a18ac352f6126a78"
  _type = "trajectory_control_msgs/TrajectoryControlFeedback"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
"""
  __slots__ = ['timestep','cmd_vel','tracks_cmd','posture_cmd','flippers_state','trajectory_error','virtual_reference_pose','robot_pose']
  _slot_types = ['float64','geometry_msgs/Twist','nifti_robot_driver_msgs/Tracks','std_msgs/Int32','nifti_robot_driver_msgs/FlippersStateStamped','geometry_msgs/Vector3','geometry_msgs/Pose','geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       timestep,cmd_vel,tracks_cmd,posture_cmd,flippers_state,trajectory_error,virtual_reference_pose,robot_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TrajectoryControlFeedback, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.timestep is None:
        self.timestep = 0.
      if self.cmd_vel is None:
        self.cmd_vel = geometry_msgs.msg.Twist()
      if self.tracks_cmd is None:
        self.tracks_cmd = nifti_robot_driver_msgs.msg.Tracks()
      if self.posture_cmd is None:
        self.posture_cmd = std_msgs.msg.Int32()
      if self.flippers_state is None:
        self.flippers_state = nifti_robot_driver_msgs.msg.FlippersStateStamped()
      if self.trajectory_error is None:
        self.trajectory_error = geometry_msgs.msg.Vector3()
      if self.virtual_reference_pose is None:
        self.virtual_reference_pose = geometry_msgs.msg.Pose()
      if self.robot_pose is None:
        self.robot_pose = geometry_msgs.msg.Pose()
    else:
      self.timestep = 0.
      self.cmd_vel = geometry_msgs.msg.Twist()
      self.tracks_cmd = nifti_robot_driver_msgs.msg.Tracks()
      self.posture_cmd = std_msgs.msg.Int32()
      self.flippers_state = nifti_robot_driver_msgs.msg.FlippersStateStamped()
      self.trajectory_error = geometry_msgs.msg.Vector3()
      self.virtual_reference_pose = geometry_msgs.msg.Pose()
      self.robot_pose = geometry_msgs.msg.Pose()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_9di3I().pack(_x.timestep, _x.cmd_vel.linear.x, _x.cmd_vel.linear.y, _x.cmd_vel.linear.z, _x.cmd_vel.angular.x, _x.cmd_vel.angular.y, _x.cmd_vel.angular.z, _x.tracks_cmd.left, _x.tracks_cmd.right, _x.posture_cmd.data, _x.flippers_state.header.seq, _x.flippers_state.header.stamp.secs, _x.flippers_state.header.stamp.nsecs))
      _x = self.flippers_state.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_21d().pack(_x.flippers_state.frontLeft, _x.flippers_state.frontRight, _x.flippers_state.rearLeft, _x.flippers_state.rearRight, _x.trajectory_error.x, _x.trajectory_error.y, _x.trajectory_error.z, _x.virtual_reference_pose.position.x, _x.virtual_reference_pose.position.y, _x.virtual_reference_pose.position.z, _x.virtual_reference_pose.orientation.x, _x.virtual_reference_pose.orientation.y, _x.virtual_reference_pose.orientation.z, _x.virtual_reference_pose.orientation.w, _x.robot_pose.position.x, _x.robot_pose.position.y, _x.robot_pose.position.z, _x.robot_pose.orientation.x, _x.robot_pose.orientation.y, _x.robot_pose.orientation.z, _x.robot_pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.cmd_vel is None:
        self.cmd_vel = geometry_msgs.msg.Twist()
      if self.tracks_cmd is None:
        self.tracks_cmd = nifti_robot_driver_msgs.msg.Tracks()
      if self.posture_cmd is None:
        self.posture_cmd = std_msgs.msg.Int32()
      if self.flippers_state is None:
        self.flippers_state = nifti_robot_driver_msgs.msg.FlippersStateStamped()
      if self.trajectory_error is None:
        self.trajectory_error = geometry_msgs.msg.Vector3()
      if self.virtual_reference_pose is None:
        self.virtual_reference_pose = geometry_msgs.msg.Pose()
      if self.robot_pose is None:
        self.robot_pose = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 88
      (_x.timestep, _x.cmd_vel.linear.x, _x.cmd_vel.linear.y, _x.cmd_vel.linear.z, _x.cmd_vel.angular.x, _x.cmd_vel.angular.y, _x.cmd_vel.angular.z, _x.tracks_cmd.left, _x.tracks_cmd.right, _x.posture_cmd.data, _x.flippers_state.header.seq, _x.flippers_state.header.stamp.secs, _x.flippers_state.header.stamp.nsecs,) = _get_struct_9di3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.flippers_state.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.flippers_state.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 168
      (_x.flippers_state.frontLeft, _x.flippers_state.frontRight, _x.flippers_state.rearLeft, _x.flippers_state.rearRight, _x.trajectory_error.x, _x.trajectory_error.y, _x.trajectory_error.z, _x.virtual_reference_pose.position.x, _x.virtual_reference_pose.position.y, _x.virtual_reference_pose.position.z, _x.virtual_reference_pose.orientation.x, _x.virtual_reference_pose.orientation.y, _x.virtual_reference_pose.orientation.z, _x.virtual_reference_pose.orientation.w, _x.robot_pose.position.x, _x.robot_pose.position.y, _x.robot_pose.position.z, _x.robot_pose.orientation.x, _x.robot_pose.orientation.y, _x.robot_pose.orientation.z, _x.robot_pose.orientation.w,) = _get_struct_21d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_9di3I().pack(_x.timestep, _x.cmd_vel.linear.x, _x.cmd_vel.linear.y, _x.cmd_vel.linear.z, _x.cmd_vel.angular.x, _x.cmd_vel.angular.y, _x.cmd_vel.angular.z, _x.tracks_cmd.left, _x.tracks_cmd.right, _x.posture_cmd.data, _x.flippers_state.header.seq, _x.flippers_state.header.stamp.secs, _x.flippers_state.header.stamp.nsecs))
      _x = self.flippers_state.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_21d().pack(_x.flippers_state.frontLeft, _x.flippers_state.frontRight, _x.flippers_state.rearLeft, _x.flippers_state.rearRight, _x.trajectory_error.x, _x.trajectory_error.y, _x.trajectory_error.z, _x.virtual_reference_pose.position.x, _x.virtual_reference_pose.position.y, _x.virtual_reference_pose.position.z, _x.virtual_reference_pose.orientation.x, _x.virtual_reference_pose.orientation.y, _x.virtual_reference_pose.orientation.z, _x.virtual_reference_pose.orientation.w, _x.robot_pose.position.x, _x.robot_pose.position.y, _x.robot_pose.position.z, _x.robot_pose.orientation.x, _x.robot_pose.orientation.y, _x.robot_pose.orientation.z, _x.robot_pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.cmd_vel is None:
        self.cmd_vel = geometry_msgs.msg.Twist()
      if self.tracks_cmd is None:
        self.tracks_cmd = nifti_robot_driver_msgs.msg.Tracks()
      if self.posture_cmd is None:
        self.posture_cmd = std_msgs.msg.Int32()
      if self.flippers_state is None:
        self.flippers_state = nifti_robot_driver_msgs.msg.FlippersStateStamped()
      if self.trajectory_error is None:
        self.trajectory_error = geometry_msgs.msg.Vector3()
      if self.virtual_reference_pose is None:
        self.virtual_reference_pose = geometry_msgs.msg.Pose()
      if self.robot_pose is None:
        self.robot_pose = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 88
      (_x.timestep, _x.cmd_vel.linear.x, _x.cmd_vel.linear.y, _x.cmd_vel.linear.z, _x.cmd_vel.angular.x, _x.cmd_vel.angular.y, _x.cmd_vel.angular.z, _x.tracks_cmd.left, _x.tracks_cmd.right, _x.posture_cmd.data, _x.flippers_state.header.seq, _x.flippers_state.header.stamp.secs, _x.flippers_state.header.stamp.nsecs,) = _get_struct_9di3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.flippers_state.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.flippers_state.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 168
      (_x.flippers_state.frontLeft, _x.flippers_state.frontRight, _x.flippers_state.rearLeft, _x.flippers_state.rearRight, _x.trajectory_error.x, _x.trajectory_error.y, _x.trajectory_error.z, _x.virtual_reference_pose.position.x, _x.virtual_reference_pose.position.y, _x.virtual_reference_pose.position.z, _x.virtual_reference_pose.orientation.x, _x.virtual_reference_pose.orientation.y, _x.virtual_reference_pose.orientation.z, _x.virtual_reference_pose.orientation.w, _x.robot_pose.position.x, _x.robot_pose.position.y, _x.robot_pose.position.z, _x.robot_pose.orientation.x, _x.robot_pose.orientation.y, _x.robot_pose.orientation.z, _x.robot_pose.orientation.w,) = _get_struct_21d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9di3I = None
def _get_struct_9di3I():
    global _struct_9di3I
    if _struct_9di3I is None:
        _struct_9di3I = struct.Struct("<9di3I")
    return _struct_9di3I
_struct_21d = None
def _get_struct_21d():
    global _struct_21d
    if _struct_21d is None:
        _struct_21d = struct.Struct("<21d")
    return _struct_21d