# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from networkanalysis_msgs/wirelesslink.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class wirelesslink(genpy.Message):
  _md5sum = "457a5c2625e82fb0b67b1de1eee53435"
  _type = "networkanalysis_msgs/wirelesslink"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """#Received Signal Strength (RSS) in dBm
int16 rssi

#Link Quality of the wireless link in percentage
int16 lqi

#Noise floor of the wireless link in dBm (only very few NICs provide this correctly)
int16 noise
"""
  __slots__ = ['rssi','lqi','noise']
  _slot_types = ['int16','int16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       rssi,lqi,noise

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(wirelesslink, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.rssi is None:
        self.rssi = 0
      if self.lqi is None:
        self.lqi = 0
      if self.noise is None:
        self.noise = 0
    else:
      self.rssi = 0
      self.lqi = 0
      self.noise = 0

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
      buff.write(_get_struct_3h().pack(_x.rssi, _x.lqi, _x.noise))
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
      end += 6
      (_x.rssi, _x.lqi, _x.noise,) = _get_struct_3h().unpack(str[start:end])
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
      buff.write(_get_struct_3h().pack(_x.rssi, _x.lqi, _x.noise))
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
      end += 6
      (_x.rssi, _x.lqi, _x.noise,) = _get_struct_3h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3h = None
def _get_struct_3h():
    global _struct_3h
    if _struct_3h is None:
        _struct_3h = struct.Struct("<3h")
    return _struct_3h