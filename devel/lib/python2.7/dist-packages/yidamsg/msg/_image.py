# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from yidamsg/image.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class image(genpy.Message):
  _md5sum = "d49f80c06464cb3dde6b4fc6f30be9fc"
  _type = "yidamsg/image"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8[200000] pImgBuf1
uint8[200000] pImgBuf2
int32 width
int32 height
int32 id1
int32 id2
int32 length1
int32 length2

"""
  __slots__ = ['pImgBuf1','pImgBuf2','width','height','id1','id2','length1','length2']
  _slot_types = ['uint8[200000]','uint8[200000]','int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pImgBuf1,pImgBuf2,width,height,id1,id2,length1,length2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(image, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pImgBuf1 is None:
        self.pImgBuf1 = b'\0'*200000
      if self.pImgBuf2 is None:
        self.pImgBuf2 = b'\0'*200000
      if self.width is None:
        self.width = 0
      if self.height is None:
        self.height = 0
      if self.id1 is None:
        self.id1 = 0
      if self.id2 is None:
        self.id2 = 0
      if self.length1 is None:
        self.length1 = 0
      if self.length2 is None:
        self.length2 = 0
    else:
      self.pImgBuf1 = b'\0'*200000
      self.pImgBuf2 = b'\0'*200000
      self.width = 0
      self.height = 0
      self.id1 = 0
      self.id2 = 0
      self.length1 = 0
      self.length2 = 0

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
      _x = self.pImgBuf1
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_200000B().pack(*_x))
      else:
        buff.write(_get_struct_200000s().pack(_x))
      _x = self.pImgBuf2
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_200000B().pack(*_x))
      else:
        buff.write(_get_struct_200000s().pack(_x))
      _x = self
      buff.write(_get_struct_6i().pack(_x.width, _x.height, _x.id1, _x.id2, _x.length1, _x.length2))
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
      end += 200000
      self.pImgBuf1 = str[start:end]
      start = end
      end += 200000
      self.pImgBuf2 = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.width, _x.height, _x.id1, _x.id2, _x.length1, _x.length2,) = _get_struct_6i().unpack(str[start:end])
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
      _x = self.pImgBuf1
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_200000B().pack(*_x))
      else:
        buff.write(_get_struct_200000s().pack(_x))
      _x = self.pImgBuf2
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_200000B().pack(*_x))
      else:
        buff.write(_get_struct_200000s().pack(_x))
      _x = self
      buff.write(_get_struct_6i().pack(_x.width, _x.height, _x.id1, _x.id2, _x.length1, _x.length2))
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
      end += 200000
      self.pImgBuf1 = str[start:end]
      start = end
      end += 200000
      self.pImgBuf2 = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.width, _x.height, _x.id1, _x.id2, _x.length1, _x.length2,) = _get_struct_6i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6i = None
def _get_struct_6i():
    global _struct_6i
    if _struct_6i is None:
        _struct_6i = struct.Struct("<6i")
    return _struct_6i
_struct_200000s = None
def _get_struct_200000s():
    global _struct_200000s
    if _struct_200000s is None:
        _struct_200000s = struct.Struct("<200000s")
    return _struct_200000s
_struct_200000B = None
def _get_struct_200000B():
    global _struct_200000B
    if _struct_200000B is None:
        _struct_200000B = struct.Struct("<200000B")
    return _struct_200000B