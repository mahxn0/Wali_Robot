// Auto-generated. Do not edit!

// (in-package yidamsg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class motor_control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direct_angle = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('direct_angle')) {
        this.direct_angle = initObj.direct_angle
      }
      else {
        this.direct_angle = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor_control
    // Serialize message field [direct_angle]
    bufferOffset = _serializer.int32(obj.direct_angle, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor_control
    let len;
    let data = new motor_control(null);
    // Deserialize message field [direct_angle]
    data.direct_angle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/motor_control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11e242d50e6d6f6742ef1ce74bcc4554';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 direct_angle
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
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor_control(null);
    if (msg.direct_angle !== undefined) {
      resolved.direct_angle = msg.direct_angle;
    }
    else {
      resolved.direct_angle = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = geometry_msgs.msg.Twist.Resolve(msg.speed)
    }
    else {
      resolved.speed = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = motor_control;
