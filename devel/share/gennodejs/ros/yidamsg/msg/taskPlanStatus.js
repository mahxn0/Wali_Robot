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

class taskPlanStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taskId = null;
      this.robotId = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('taskId')) {
        this.taskId = initObj.taskId
      }
      else {
        this.taskId = 0;
      }
      if (initObj.hasOwnProperty('robotId')) {
        this.robotId = initObj.robotId
      }
      else {
        this.robotId = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type taskPlanStatus
    // Serialize message field [taskId]
    bufferOffset = _serializer.int32(obj.taskId, buffer, bufferOffset);
    // Serialize message field [robotId]
    bufferOffset = _serializer.string(obj.robotId, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type taskPlanStatus
    let len;
    let data = new taskPlanStatus(null);
    // Deserialize message field [taskId]
    data.taskId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [robotId]
    data.robotId = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robotId.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/taskPlanStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '592a22bb6712716461dc6dd5022389ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 taskId
    string robotId
    int32 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new taskPlanStatus(null);
    if (msg.taskId !== undefined) {
      resolved.taskId = msg.taskId;
    }
    else {
      resolved.taskId = 0
    }

    if (msg.robotId !== undefined) {
      resolved.robotId = msg.robotId;
    }
    else {
      resolved.robotId = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = taskPlanStatus;
