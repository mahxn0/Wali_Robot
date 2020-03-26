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

class TaskDeliver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_history_id = null;
      this.robot_id = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskDeliver
    // Serialize message field [task_history_id]
    bufferOffset = _serializer.int32(obj.task_history_id, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskDeliver
    let len;
    let data = new TaskDeliver(null);
    // Deserialize message field [task_history_id]
    data.task_history_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/TaskDeliver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92ff1021f832a89e5a8dee53b996e8de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_history_id
    int32 robot_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskDeliver(null);
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

    return resolved;
    }
};

module.exports = TaskDeliver;
