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

class TaskControlStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_history_id = null;
      this.task_status = null;
    }
    else {
      if (initObj.hasOwnProperty('task_history_id')) {
        this.task_history_id = initObj.task_history_id
      }
      else {
        this.task_history_id = 0;
      }
      if (initObj.hasOwnProperty('task_status')) {
        this.task_status = initObj.task_status
      }
      else {
        this.task_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskControlStatus
    // Serialize message field [task_history_id]
    bufferOffset = _serializer.int32(obj.task_history_id, buffer, bufferOffset);
    // Serialize message field [task_status]
    bufferOffset = _serializer.uint8(obj.task_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskControlStatus
    let len;
    let data = new TaskControlStatus(null);
    // Deserialize message field [task_history_id]
    data.task_history_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_status]
    data.task_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/TaskControlStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2293a62523ff50d550bd7b5b6f6302d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_history_id
    uint8 task_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskControlStatus(null);
    if (msg.task_history_id !== undefined) {
      resolved.task_history_id = msg.task_history_id;
    }
    else {
      resolved.task_history_id = 0
    }

    if (msg.task_status !== undefined) {
      resolved.task_status = msg.task_status;
    }
    else {
      resolved.task_status = 0
    }

    return resolved;
    }
};

module.exports = TaskControlStatus;
