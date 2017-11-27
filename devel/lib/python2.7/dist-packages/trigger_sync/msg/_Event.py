# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from trigger_sync/Event.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class Event(genpy.Message):
  _md5sum = "7bb8e8fc0642e70a90d298e9b70ba013"
  _type = "trigger_sync/Event"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string  event_name
time    local_request_time
string  device_clock_id
time    device_time
string  local_clock_id
time    local_receive_time
time    corrected_local_time
float64 clock_skew
duration    min_transport_delay
"""
  __slots__ = ['event_name','local_request_time','device_clock_id','device_time','local_clock_id','local_receive_time','corrected_local_time','clock_skew','min_transport_delay']
  _slot_types = ['string','time','string','time','string','time','time','float64','duration']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       event_name,local_request_time,device_clock_id,device_time,local_clock_id,local_receive_time,corrected_local_time,clock_skew,min_transport_delay

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Event, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.event_name is None:
        self.event_name = ''
      if self.local_request_time is None:
        self.local_request_time = genpy.Time()
      if self.device_clock_id is None:
        self.device_clock_id = ''
      if self.device_time is None:
        self.device_time = genpy.Time()
      if self.local_clock_id is None:
        self.local_clock_id = ''
      if self.local_receive_time is None:
        self.local_receive_time = genpy.Time()
      if self.corrected_local_time is None:
        self.corrected_local_time = genpy.Time()
      if self.clock_skew is None:
        self.clock_skew = 0.
      if self.min_transport_delay is None:
        self.min_transport_delay = genpy.Duration()
    else:
      self.event_name = ''
      self.local_request_time = genpy.Time()
      self.device_clock_id = ''
      self.device_time = genpy.Time()
      self.local_clock_id = ''
      self.local_receive_time = genpy.Time()
      self.corrected_local_time = genpy.Time()
      self.clock_skew = 0.
      self.min_transport_delay = genpy.Duration()

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
      _x = self.event_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.local_request_time.secs, _x.local_request_time.nsecs))
      _x = self.device_clock_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.device_time.secs, _x.device_time.nsecs))
      _x = self.local_clock_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4Id2i().pack(_x.local_receive_time.secs, _x.local_receive_time.nsecs, _x.corrected_local_time.secs, _x.corrected_local_time.nsecs, _x.clock_skew, _x.min_transport_delay.secs, _x.min_transport_delay.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.local_request_time is None:
        self.local_request_time = genpy.Time()
      if self.device_time is None:
        self.device_time = genpy.Time()
      if self.local_receive_time is None:
        self.local_receive_time = genpy.Time()
      if self.corrected_local_time is None:
        self.corrected_local_time = genpy.Time()
      if self.min_transport_delay is None:
        self.min_transport_delay = genpy.Duration()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.event_name = str[start:end].decode('utf-8')
      else:
        self.event_name = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.local_request_time.secs, _x.local_request_time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_clock_id = str[start:end].decode('utf-8')
      else:
        self.device_clock_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.device_time.secs, _x.device_time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.local_clock_id = str[start:end].decode('utf-8')
      else:
        self.local_clock_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.local_receive_time.secs, _x.local_receive_time.nsecs, _x.corrected_local_time.secs, _x.corrected_local_time.nsecs, _x.clock_skew, _x.min_transport_delay.secs, _x.min_transport_delay.nsecs,) = _get_struct_4Id2i().unpack(str[start:end])
      self.local_request_time.canon()
      self.device_time.canon()
      self.local_receive_time.canon()
      self.corrected_local_time.canon()
      self.min_transport_delay.canon()
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
      _x = self.event_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.local_request_time.secs, _x.local_request_time.nsecs))
      _x = self.device_clock_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.device_time.secs, _x.device_time.nsecs))
      _x = self.local_clock_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4Id2i().pack(_x.local_receive_time.secs, _x.local_receive_time.nsecs, _x.corrected_local_time.secs, _x.corrected_local_time.nsecs, _x.clock_skew, _x.min_transport_delay.secs, _x.min_transport_delay.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.local_request_time is None:
        self.local_request_time = genpy.Time()
      if self.device_time is None:
        self.device_time = genpy.Time()
      if self.local_receive_time is None:
        self.local_receive_time = genpy.Time()
      if self.corrected_local_time is None:
        self.corrected_local_time = genpy.Time()
      if self.min_transport_delay is None:
        self.min_transport_delay = genpy.Duration()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.event_name = str[start:end].decode('utf-8')
      else:
        self.event_name = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.local_request_time.secs, _x.local_request_time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_clock_id = str[start:end].decode('utf-8')
      else:
        self.device_clock_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.device_time.secs, _x.device_time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.local_clock_id = str[start:end].decode('utf-8')
      else:
        self.local_clock_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.local_receive_time.secs, _x.local_receive_time.nsecs, _x.corrected_local_time.secs, _x.corrected_local_time.nsecs, _x.clock_skew, _x.min_transport_delay.secs, _x.min_transport_delay.nsecs,) = _get_struct_4Id2i().unpack(str[start:end])
      self.local_request_time.canon()
      self.device_time.canon()
      self.local_receive_time.canon()
      self.corrected_local_time.canon()
      self.min_transport_delay.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_4Id2i = None
def _get_struct_4Id2i():
    global _struct_4Id2i
    if _struct_4Id2i is None:
        _struct_4Id2i = struct.Struct("<4Id2i")
    return _struct_4Id2i
