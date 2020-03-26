# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from yidamsg/DemoResult.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class DemoResult(genpy.Message):
  _md5sum = "24d2d03877545f95c0d6d31f886a5d9e"
  _type = "yidamsg/DemoResult"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 camid
int32 picid
float32 x
float32 y
float32 z
uint8[] surfaceimage
uint8[] equipimage
uint8[] nameplates
uint8[] equipid
string result
time timestamp
bool success
"""
  __slots__ = ['camid','picid','x','y','z','surfaceimage','equipimage','nameplates','equipid','result','timestamp','success']
  _slot_types = ['int32','int32','float32','float32','float32','uint8[]','uint8[]','uint8[]','uint8[]','string','time','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       camid,picid,x,y,z,surfaceimage,equipimage,nameplates,equipid,result,timestamp,success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DemoResult, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.camid is None:
        self.camid = 0
      if self.picid is None:
        self.picid = 0
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.surfaceimage is None:
        self.surfaceimage = b''
      if self.equipimage is None:
        self.equipimage = b''
      if self.nameplates is None:
        self.nameplates = b''
      if self.equipid is None:
        self.equipid = b''
      if self.result is None:
        self.result = ''
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      if self.success is None:
        self.success = False
    else:
      self.camid = 0
      self.picid = 0
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.surfaceimage = b''
      self.equipimage = b''
      self.nameplates = b''
      self.equipid = b''
      self.result = ''
      self.timestamp = genpy.Time()
      self.success = False

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
      buff.write(_get_struct_2i3f().pack(_x.camid, _x.picid, _x.x, _x.y, _x.z))
      _x = self.surfaceimage
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.equipimage
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.nameplates
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.equipid
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.result
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2IB().pack(_x.timestamp.secs, _x.timestamp.nsecs, _x.success))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 20
      (_x.camid, _x.picid, _x.x, _x.y, _x.z,) = _get_struct_2i3f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.surfaceimage = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.equipimage = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.nameplates = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.equipid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result = str[start:end].decode('utf-8')
      else:
        self.result = str[start:end]
      _x = self
      start = end
      end += 9
      (_x.timestamp.secs, _x.timestamp.nsecs, _x.success,) = _get_struct_2IB().unpack(str[start:end])
      self.success = bool(self.success)
      self.timestamp.canon()
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
      buff.write(_get_struct_2i3f().pack(_x.camid, _x.picid, _x.x, _x.y, _x.z))
      _x = self.surfaceimage
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.equipimage
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.nameplates
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.equipid
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.result
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2IB().pack(_x.timestamp.secs, _x.timestamp.nsecs, _x.success))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 20
      (_x.camid, _x.picid, _x.x, _x.y, _x.z,) = _get_struct_2i3f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.surfaceimage = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.equipimage = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.nameplates = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.equipid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result = str[start:end].decode('utf-8')
      else:
        self.result = str[start:end]
      _x = self
      start = end
      end += 9
      (_x.timestamp.secs, _x.timestamp.nsecs, _x.success,) = _get_struct_2IB().unpack(str[start:end])
      self.success = bool(self.success)
      self.timestamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2IB = None
def _get_struct_2IB():
    global _struct_2IB
    if _struct_2IB is None:
        _struct_2IB = struct.Struct("<2IB")
    return _struct_2IB
_struct_2i3f = None
def _get_struct_2i3f():
    global _struct_2i3f
    if _struct_2i3f is None:
        _struct_2i3f = struct.Struct("<2i3f")
    return _struct_2i3f