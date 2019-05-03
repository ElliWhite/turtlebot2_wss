# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from nifti_robot_driver_msgs/FlippersVel.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class FlippersVel(genpy.Message):
  _md5sum = "7e95d6456aca0895fd90cacc4b232a69"
  _type = "nifti_robot_driver_msgs/FlippersVel"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 frontLeft
float64 frontRight
float64 rearLeft
float64 rearRight
"""
  __slots__ = ['frontLeft','frontRight','rearLeft','rearRight']
  _slot_types = ['float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frontLeft,frontRight,rearLeft,rearRight

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FlippersVel, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.frontLeft is None:
        self.frontLeft = 0.
      if self.frontRight is None:
        self.frontRight = 0.
      if self.rearLeft is None:
        self.rearLeft = 0.
      if self.rearRight is None:
        self.rearRight = 0.
    else:
      self.frontLeft = 0.
      self.frontRight = 0.
      self.rearLeft = 0.
      self.rearRight = 0.

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
      buff.write(_get_struct_4d().pack(_x.frontLeft, _x.frontRight, _x.rearLeft, _x.rearRight))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 32
      (_x.frontLeft, _x.frontRight, _x.rearLeft, _x.rearRight,) = _get_struct_4d().unpack(str[start:end])
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
      buff.write(_get_struct_4d().pack(_x.frontLeft, _x.frontRight, _x.rearLeft, _x.rearRight))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 32
      (_x.frontLeft, _x.frontRight, _x.rearLeft, _x.rearRight,) = _get_struct_4d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d