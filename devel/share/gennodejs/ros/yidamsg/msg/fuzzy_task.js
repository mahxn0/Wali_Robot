// Auto-generated. Do not edit!

// (in-package yidamsg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class fuzzy_task {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_flag = null;
      this.dis_left = null;
      this.dis_right = null;
      this.included_angle = null;
      this.turn_angle = null;
      this.dis_cur_pos = null;
      this.cur_speed = null;
      this.obstacle_pos = null;
      this.allow_width = null;
      this.next_width = null;
      this.msg_type = null;
      this.align = null;
    }
    else {
      if (initObj.hasOwnProperty('control_flag')) {
        this.control_flag = initObj.control_flag
      }
      else {
        this.control_flag = 0;
      }
      if (initObj.hasOwnProperty('dis_left')) {
        this.dis_left = initObj.dis_left
      }
      else {
        this.dis_left = 0.0;
      }
      if (initObj.hasOwnProperty('dis_right')) {
        this.dis_right = initObj.dis_right
      }
      else {
        this.dis_right = 0.0;
      }
      if (initObj.hasOwnProperty('included_angle')) {
        this.included_angle = initObj.included_angle
      }
      else {
        this.included_angle = 0.0;
      }
      if (initObj.hasOwnProperty('turn_angle')) {
        this.turn_angle = initObj.turn_angle
      }
      else {
        this.turn_angle = 0.0;
      }
      if (initObj.hasOwnProperty('dis_cur_pos')) {
        this.dis_cur_pos = initObj.dis_cur_pos
      }
      else {
        this.dis_cur_pos = 0.0;
      }
      if (initObj.hasOwnProperty('cur_speed')) {
        this.cur_speed = initObj.cur_speed
      }
      else {
        this.cur_speed = 0.0;
      }
      if (initObj.hasOwnProperty('obstacle_pos')) {
        this.obstacle_pos = initObj.obstacle_pos
      }
      else {
        this.obstacle_pos = 0.0;
      }
      if (initObj.hasOwnProperty('allow_width')) {
        this.allow_width = initObj.allow_width
      }
      else {
        this.allow_width = 0.0;
      }
      if (initObj.hasOwnProperty('next_width')) {
        this.next_width = initObj.next_width
      }
      else {
        this.next_width = 0.0;
      }
      if (initObj.hasOwnProperty('msg_type')) {
        this.msg_type = initObj.msg_type
      }
      else {
        this.msg_type = '';
      }
      if (initObj.hasOwnProperty('align')) {
        this.align = initObj.align
      }
      else {
        this.align = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fuzzy_task
    // Serialize message field [control_flag]
    bufferOffset = _serializer.int32(obj.control_flag, buffer, bufferOffset);
    // Serialize message field [dis_left]
    bufferOffset = _serializer.float32(obj.dis_left, buffer, bufferOffset);
    // Serialize message field [dis_right]
    bufferOffset = _serializer.float32(obj.dis_right, buffer, bufferOffset);
    // Serialize message field [included_angle]
    bufferOffset = _serializer.float32(obj.included_angle, buffer, bufferOffset);
    // Serialize message field [turn_angle]
    bufferOffset = _serializer.float32(obj.turn_angle, buffer, bufferOffset);
    // Serialize message field [dis_cur_pos]
    bufferOffset = _serializer.float32(obj.dis_cur_pos, buffer, bufferOffset);
    // Serialize message field [cur_speed]
    bufferOffset = _serializer.float32(obj.cur_speed, buffer, bufferOffset);
    // Serialize message field [obstacle_pos]
    bufferOffset = _serializer.float32(obj.obstacle_pos, buffer, bufferOffset);
    // Serialize message field [allow_width]
    bufferOffset = _serializer.float32(obj.allow_width, buffer, bufferOffset);
    // Serialize message field [next_width]
    bufferOffset = _serializer.float32(obj.next_width, buffer, bufferOffset);
    // Serialize message field [msg_type]
    bufferOffset = _serializer.string(obj.msg_type, buffer, bufferOffset);
    // Serialize message field [align]
    bufferOffset = _serializer.int32(obj.align, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fuzzy_task
    let len;
    let data = new fuzzy_task(null);
    // Deserialize message field [control_flag]
    data.control_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dis_left]
    data.dis_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_right]
    data.dis_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [included_angle]
    data.included_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [turn_angle]
    data.turn_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_cur_pos]
    data.dis_cur_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cur_speed]
    data.cur_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obstacle_pos]
    data.obstacle_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [allow_width]
    data.allow_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [next_width]
    data.next_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [msg_type]
    data.msg_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [align]
    data.align = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg_type.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/fuzzy_task';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '438c1dac4f2a4a69b46ae226145532f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 control_flag
    float32 dis_left
    float32 dis_right
    float32 included_angle
    float32 turn_angle
    float32 dis_cur_pos
    float32 cur_speed
    float32 obstacle_pos
    float32 allow_width
    float32 next_width
    string msg_type
    int32 align
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fuzzy_task(null);
    if (msg.control_flag !== undefined) {
      resolved.control_flag = msg.control_flag;
    }
    else {
      resolved.control_flag = 0
    }

    if (msg.dis_left !== undefined) {
      resolved.dis_left = msg.dis_left;
    }
    else {
      resolved.dis_left = 0.0
    }

    if (msg.dis_right !== undefined) {
      resolved.dis_right = msg.dis_right;
    }
    else {
      resolved.dis_right = 0.0
    }

    if (msg.included_angle !== undefined) {
      resolved.included_angle = msg.included_angle;
    }
    else {
      resolved.included_angle = 0.0
    }

    if (msg.turn_angle !== undefined) {
      resolved.turn_angle = msg.turn_angle;
    }
    else {
      resolved.turn_angle = 0.0
    }

    if (msg.dis_cur_pos !== undefined) {
      resolved.dis_cur_pos = msg.dis_cur_pos;
    }
    else {
      resolved.dis_cur_pos = 0.0
    }

    if (msg.cur_speed !== undefined) {
      resolved.cur_speed = msg.cur_speed;
    }
    else {
      resolved.cur_speed = 0.0
    }

    if (msg.obstacle_pos !== undefined) {
      resolved.obstacle_pos = msg.obstacle_pos;
    }
    else {
      resolved.obstacle_pos = 0.0
    }

    if (msg.allow_width !== undefined) {
      resolved.allow_width = msg.allow_width;
    }
    else {
      resolved.allow_width = 0.0
    }

    if (msg.next_width !== undefined) {
      resolved.next_width = msg.next_width;
    }
    else {
      resolved.next_width = 0.0
    }

    if (msg.msg_type !== undefined) {
      resolved.msg_type = msg.msg_type;
    }
    else {
      resolved.msg_type = ''
    }

    if (msg.align !== undefined) {
      resolved.align = msg.align;
    }
    else {
      resolved.align = 0
    }

    return resolved;
    }
};

module.exports = fuzzy_task;
