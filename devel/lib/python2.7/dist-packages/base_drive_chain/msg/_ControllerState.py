# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from base_drive_chain/ControllerState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ControllerState(genpy.Message):
  _md5sum = "6cc274a1867f3f7db3f1191e8caf70dc"
  _type = "base_drive_chain/ControllerState"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 controller_mode
float32 battery_volts
float32 battery_amps
int16 max_temp
bool[] status_flags
"""
  __slots__ = ['controller_mode','battery_volts','battery_amps','max_temp','status_flags']
  _slot_types = ['int8','float32','float32','int16','bool[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       controller_mode,battery_volts,battery_amps,max_temp,status_flags

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ControllerState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.controller_mode is None:
        self.controller_mode = 0
      if self.battery_volts is None:
        self.battery_volts = 0.
      if self.battery_amps is None:
        self.battery_amps = 0.
      if self.max_temp is None:
        self.max_temp = 0
      if self.status_flags is None:
        self.status_flags = []
    else:
      self.controller_mode = 0
      self.battery_volts = 0.
      self.battery_amps = 0.
      self.max_temp = 0
      self.status_flags = []

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
      buff.write(_get_struct_b2fh().pack(_x.controller_mode, _x.battery_volts, _x.battery_amps, _x.max_temp))
      length = len(self.status_flags)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.pack(pattern, *self.status_flags))
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
      end += 11
      (_x.controller_mode, _x.battery_volts, _x.battery_amps, _x.max_temp,) = _get_struct_b2fh().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      end += struct.calcsize(pattern)
      self.status_flags = struct.unpack(pattern, str[start:end])
      self.status_flags = map(bool, self.status_flags)
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
      buff.write(_get_struct_b2fh().pack(_x.controller_mode, _x.battery_volts, _x.battery_amps, _x.max_temp))
      length = len(self.status_flags)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.status_flags.tostring())
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
      end += 11
      (_x.controller_mode, _x.battery_volts, _x.battery_amps, _x.max_temp,) = _get_struct_b2fh().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      end += struct.calcsize(pattern)
      self.status_flags = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.status_flags = map(bool, self.status_flags)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_b2fh = None
def _get_struct_b2fh():
    global _struct_b2fh
    if _struct_b2fh is None:
        _struct_b2fh = struct.Struct("<b2fh")
    return _struct_b2fh
