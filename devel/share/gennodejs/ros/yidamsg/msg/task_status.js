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

class task_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taskid = null;
      this.start_x = null;
      this.start_y = null;
      this.start_z = null;
      this.end_x = null;
      this.end_y = null;
      this.end_z = null;
      this.alldis = null;
      this.dis = null;
      this.speed = null;
      this.dis_left = null;
      this.dis_right = null;
      this.next_width = null;
      this.road_width = null;
      this.control_flag = null;
      this.log = null;
      this.direction = null;
      this.align = null;
    }
    else {
      if (initObj.hasOwnProperty('taskid')) {
        this.taskid = initObj.taskid
      }
      else {
        this.taskid = 0;
      }
      if (initObj.hasOwnProperty('start_x')) {
        this.start_x = initObj.start_x
      }
      else {
        this.start_x = 0.0;
      }
      if (initObj.hasOwnProperty('start_y')) {
        this.start_y = initObj.start_y
      }
      else {
        this.start_y = 0.0;
      }
      if (initObj.hasOwnProperty('start_z')) {
        this.start_z = initObj.start_z
      }
      else {
        this.start_z = 0.0;
      }
      if (initObj.hasOwnProperty('end_x')) {
        this.end_x = initObj.end_x
      }
      else {
        this.end_x = 0.0;
      }
      if (initObj.hasOwnProperty('end_y')) {
        this.end_y = initObj.end_y
      }
      else {
        this.end_y = 0.0;
      }
      if (initObj.hasOwnProperty('end_z')) {
        this.end_z = initObj.end_z
      }
      else {
        this.end_z = 0.0;
      }
      if (initObj.hasOwnProperty('alldis')) {
        this.alldis = initObj.alldis
      }
      else {
        this.alldis = 0.0;
      }
      if (initObj.hasOwnProperty('dis')) {
        this.dis = initObj.dis
      }
      else {
        this.dis = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
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
      if (initObj.hasOwnProperty('next_width')) {
        this.next_width = initObj.next_width
      }
      else {
        this.next_width = 0.0;
      }
      if (initObj.hasOwnProperty('road_width')) {
        this.road_width = initObj.road_width
      }
      else {
        this.road_width = 0.0;
      }
      if (initObj.hasOwnProperty('control_flag')) {
        this.control_flag = initObj.control_flag
      }
      else {
        this.control_flag = 0;
      }
      if (initObj.hasOwnProperty('log')) {
        this.log = initObj.log
      }
      else {
        this.log = '';
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
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
    // Serializes a message object of type task_status
    // Serialize message field [taskid]
    bufferOffset = _serializer.int32(obj.taskid, buffer, bufferOffset);
    // Serialize message field [start_x]
    bufferOffset = _serializer.float32(obj.start_x, buffer, bufferOffset);
    // Serialize message field [start_y]
    bufferOffset = _serializer.float32(obj.start_y, buffer, bufferOffset);
    // Serialize message field [start_z]
    bufferOffset = _serializer.float32(obj.start_z, buffer, bufferOffset);
    // Serialize message field [end_x]
    bufferOffset = _serializer.float32(obj.end_x, buffer, bufferOffset);
    // Serialize message field [end_y]
    bufferOffset = _serializer.float32(obj.end_y, buffer, bufferOffset);
    // Serialize message field [end_z]
    bufferOffset = _serializer.float32(obj.end_z, buffer, bufferOffset);
    // Serialize message field [alldis]
    bufferOffset = _serializer.float32(obj.alldis, buffer, bufferOffset);
    // Serialize message field [dis]
    bufferOffset = _serializer.float32(obj.dis, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [dis_left]
    bufferOffset = _serializer.float32(obj.dis_left, buffer, bufferOffset);
    // Serialize message field [dis_right]
    bufferOffset = _serializer.float32(obj.dis_right, buffer, bufferOffset);
    // Serialize message field [next_width]
    bufferOffset = _serializer.float32(obj.next_width, buffer, bufferOffset);
    // Serialize message field [road_width]
    bufferOffset = _serializer.float32(obj.road_width, buffer, bufferOffset);
    // Serialize message field [control_flag]
    bufferOffset = _serializer.int32(obj.control_flag, buffer, bufferOffset);
    // Serialize message field [log]
    bufferOffset = _serializer.string(obj.log, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int32(obj.direction, buffer, bufferOffset);
    // Serialize message field [align]
    bufferOffset = _serializer.int32(obj.align, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type task_status
    let len;
    let data = new task_status(null);
    // Deserialize message field [taskid]
    data.taskid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_x]
    data.start_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [start_y]
    data.start_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [start_z]
    data.start_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_x]
    data.end_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_y]
    data.end_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_z]
    data.end_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alldis]
    data.alldis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis]
    data.dis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_left]
    data.dis_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_right]
    data.dis_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [next_width]
    data.next_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [road_width]
    data.road_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [control_flag]
    data.control_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [log]
    data.log = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [align]
    data.align = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.log.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/task_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '819ed6ebecf2f7d3f8dc2a0e3cded22d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 taskid
    float32 start_x
    float32 start_y
    float32 start_z
    float32 end_x
    float32 end_y
    float32 end_z
    float32 alldis
    float32 dis
    float32 speed
    float32 dis_left
    float32 dis_right
    float32 next_width
    float32 road_width
    int32 control_flag
    string log
    int32 direction
    int32 align
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new task_status(null);
    if (msg.taskid !== undefined) {
      resolved.taskid = msg.taskid;
    }
    else {
      resolved.taskid = 0
    }

    if (msg.start_x !== undefined) {
      resolved.start_x = msg.start_x;
    }
    else {
      resolved.start_x = 0.0
    }

    if (msg.start_y !== undefined) {
      resolved.start_y = msg.start_y;
    }
    else {
      resolved.start_y = 0.0
    }

    if (msg.start_z !== undefined) {
      resolved.start_z = msg.start_z;
    }
    else {
      resolved.start_z = 0.0
    }

    if (msg.end_x !== undefined) {
      resolved.end_x = msg.end_x;
    }
    else {
      resolved.end_x = 0.0
    }

    if (msg.end_y !== undefined) {
      resolved.end_y = msg.end_y;
    }
    else {
      resolved.end_y = 0.0
    }

    if (msg.end_z !== undefined) {
      resolved.end_z = msg.end_z;
    }
    else {
      resolved.end_z = 0.0
    }

    if (msg.alldis !== undefined) {
      resolved.alldis = msg.alldis;
    }
    else {
      resolved.alldis = 0.0
    }

    if (msg.dis !== undefined) {
      resolved.dis = msg.dis;
    }
    else {
      resolved.dis = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
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

    if (msg.next_width !== undefined) {
      resolved.next_width = msg.next_width;
    }
    else {
      resolved.next_width = 0.0
    }

    if (msg.road_width !== undefined) {
      resolved.road_width = msg.road_width;
    }
    else {
      resolved.road_width = 0.0
    }

    if (msg.control_flag !== undefined) {
      resolved.control_flag = msg.control_flag;
    }
    else {
      resolved.control_flag = 0
    }

    if (msg.log !== undefined) {
      resolved.log = msg.log;
    }
    else {
      resolved.log = ''
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
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

module.exports = task_status;
