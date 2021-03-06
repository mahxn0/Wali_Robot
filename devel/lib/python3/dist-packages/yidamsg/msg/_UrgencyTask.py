# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from yidamsg/UrgencyTask.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class UrgencyTask(genpy.Message):
  _md5sum = "ec737a80ae182d535d86035a7ece0817"
  _type = "yidamsg/UrgencyTask"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 task_id
int32 robot_id
int32 task_type
int32 task_level
"""
  __slots__ = ['task_id','robot_id','task_type','task_level']
  _slot_types = ['int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       task_id,robot_id,task_type,task_level

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UrgencyTask, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.task_id is None:
        self.task_id = 0
      if self.robot_id is None:
        self.robot_id = 0
      if self.task_type is None:
        self.task_type = 0
      if self.task_level is None:
        self.task_level = 0
    else:
      self.task_id = 0
      self.robot_id = 0
      self.task_type = 0
      self.task_level = 0

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
      buff.write(_get_struct_4i().pack(_x.task_id, _x.robot_id, _x.task_type, _x.task_level))
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
      end += 16
      (_x.task_id, _x.robot_id, _x.task_type, _x.task_level,) = _get_struct_4i().unpack(str[start:end])
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
      buff.write(_get_struct_4i().pack(_x.task_id, _x.robot_id, _x.task_type, _x.task_level))
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
      end += 16
      (_x.task_id, _x.robot_id, _x.task_type, _x.task_level,) = _get_struct_4i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4i = None
def _get_struct_4i():
    global _struct_4i
    if _struct_4i is None:
        _struct_4i = struct.Struct("<4i")
    return _struct_4i
