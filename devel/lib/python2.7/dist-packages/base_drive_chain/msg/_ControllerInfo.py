# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from base_drive_chain/ControllerInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ControllerInfo(genpy.Message):
  _md5sum = "e2b2ee8fe293fac17d5e53963eed123c"
  _type = "base_drive_chain/ControllerInfo"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16[] drive_directions
int32[] home_counts
"""
  __slots__ = ['drive_directions','home_counts']
  _slot_types = ['int16[]','int32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       drive_directions,home_counts

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ControllerInfo, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.drive_directions is None:
        self.drive_directions = []
      if self.home_counts is None:
        self.home_counts = []
    else:
      self.drive_directions = []
      self.home_counts = []

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
      length = len(self.drive_directions)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(struct.pack(pattern, *self.drive_directions))
      length = len(self.home_counts)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.home_counts))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      end += struct.calcsize(pattern)
      self.drive_directions = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.home_counts = struct.unpack(pattern, str[start:end])
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
      length = len(self.drive_directions)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(self.drive_directions.tostring())
      length = len(self.home_counts)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.home_counts.tostring())
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      end += struct.calcsize(pattern)
      self.drive_directions = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.home_counts = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
