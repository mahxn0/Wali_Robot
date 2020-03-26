# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from yidamsg/motor_control.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class motor_control(genpy.Message):
  _md5sum = "11e242d50e6d6f6742ef1ce74bcc4554"
  _type = "yidamsg/motor_control"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 direct_angle
geometry_msgs/Twist speed

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
float64 z"""
  __slots__ = ['direct_angle','speed']
  _slot_types = ['int32','geometry_msgs/Twist']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       direct_angle,speed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(motor_control, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.direct_angle is None:
        self.direct_angle = 0
      if self.speed is None:
        self.speed = geometry_msgs.msg.Twist()
    else:
      self.direct_angle = 0
      self.speed = geometry_msgs.msg.Twist()

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
      buff.write(_get_struct_i6d().pack(_x.direct_angle, _x.speed.linear.x, _x.speed.linear.y, _x.speed.linear.z, _x.speed.angular.x, _x.speed.angular.y, _x.speed.angular.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.speed is None:
        self.speed = geometry_msgs.msg.Twist()
      end = 0
      _x = self
      start = end
      end += 52
      (_x.direct_angle, _x.speed.linear.x, _x.speed.linear.y, _x.speed.linear.z, _x.speed.angular.x, _x.speed.angular.y, _x.speed.angular.z,) = _get_struct_i6d().unpack(str[start:end])
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
      buff.write(_get_struct_i6d().pack(_x.direct_angle, _x.speed.linear.x, _x.speed.linear.y, _x.speed.linear.z, _x.speed.angular.x, _x.speed.angular.y, _x.speed.angular.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.speed is None:
        self.speed = geometry_msgs.msg.Twist()
      end = 0
      _x = self
      start = end
      end += 52
      (_x.direct_angle, _x.speed.linear.x, _x.speed.linear.y, _x.speed.linear.z, _x.speed.angular.x, _x.speed.angular.y, _x.speed.angular.z,) = _get_struct_i6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i6d = None
def _get_struct_i6d():
    global _struct_i6d
    if _struct_i6d is None:
        _struct_i6d = struct.Struct("<i6d")
    return _struct_i6d