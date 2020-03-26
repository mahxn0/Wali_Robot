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

class InspectedResultWeb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_history_id = null;
      this.robot_id = null;
      this.point_id = null;
      this.task_name = null;
      this.value = null;
      this.name = null;
      this.alarm_type_id = null;
      this.alarm_level = null;
      this.recon_time = null;
      this.recon_type_name = null;
    }
    else {
      if (initObj.hasOwnProperty('task_history_id')) {
        this.task_history_id = initObj.task_history_id
      }
      else {
        this.task_history_id = 0;
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('point_id')) {
        this.point_id = initObj.point_id
      }
      else {
        this.point_id = 0;
      }
      if (initObj.hasOwnProperty('task_name')) {
        this.task_name = initObj.task_name
      }
      else {
        this.task_name = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('alarm_type_id')) {
        this.alarm_type_id = initObj.alarm_type_id
      }
      else {
        this.alarm_type_id = 0;
      }
      if (initObj.hasOwnProperty('alarm_level')) {
        this.alarm_level = initObj.alarm_level
      }
      else {
        this.alarm_level = 0;
      }
      if (initObj.hasOwnProperty('recon_time')) {
        this.recon_time = initObj.recon_time
      }
      else {
        this.recon_time = '';
      }
      if (initObj.hasOwnProperty('recon_type_name')) {
        this.recon_type_name = initObj.recon_type_name
      }
      else {
        this.recon_type_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InspectedResultWeb
    // Serialize message field [task_history_id]
    bufferOffset = _serializer.int32(obj.task_history_id, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [point_id]
    bufferOffset = _serializer.int32(obj.point_id, buffer, bufferOffset);
    // Serialize message field [task_name]
    bufferOffset = _serializer.string(obj.task_name, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.float32(obj.value, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [alarm_type_id]
    bufferOffset = _serializer.uint8(obj.alarm_type_id, buffer, bufferOffset);
    // Serialize message field [alarm_level]
    bufferOffset = _serializer.uint8(obj.alarm_level, buffer, bufferOffset);
    // Serialize message field [recon_time]
    bufferOffset = _serializer.string(obj.recon_time, buffer, bufferOffset);
    // Serialize message field [recon_type_name]
    bufferOffset = _serializer.string(obj.recon_type_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InspectedResultWeb
    let len;
    let data = new InspectedResultWeb(null);
    // Deserialize message field [task_history_id]
    data.task_history_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [point_id]
    data.point_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_name]
    data.task_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_type_id]
    data.alarm_type_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [alarm_level]
    data.alarm_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [recon_time]
    data.recon_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recon_type_name]
    data.recon_type_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.task_name.length;
    length += object.name.length;
    length += object.recon_time.length;
    length += object.recon_type_name.length;
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/InspectedResultWeb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ad3da122c73ba2e57670c36124d35d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_history_id
    int32 robot_id
    int32 point_id
    string task_name
    float32 value
    string name
    uint8 alarm_type_id
    uint8 alarm_level
    string recon_time
    string recon_type_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InspectedResultWeb(null);
    if (msg.task_history_id !== undefined) {
      resolved.task_history_id = msg.task_history_id;
    }
    else {
      resolved.task_history_id = 0
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.point_id !== undefined) {
      resolved.point_id = msg.point_id;
    }
    else {
      resolved.point_id = 0
    }

    if (msg.task_name !== undefined) {
      resolved.task_name = msg.task_name;
    }
    else {
      resolved.task_name = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.alarm_type_id !== undefined) {
      resolved.alarm_type_id = msg.alarm_type_id;
    }
    else {
      resolved.alarm_type_id = 0
    }

    if (msg.alarm_level !== undefined) {
      resolved.alarm_level = msg.alarm_level;
    }
    else {
      resolved.alarm_level = 0
    }

    if (msg.recon_time !== undefined) {
      resolved.recon_time = msg.recon_time;
    }
    else {
      resolved.recon_time = ''
    }

    if (msg.recon_type_name !== undefined) {
      resolved.recon_type_name = msg.recon_type_name;
    }
    else {
      resolved.recon_type_name = ''
    }

    return resolved;
    }
};

module.exports = InspectedResultWeb;
