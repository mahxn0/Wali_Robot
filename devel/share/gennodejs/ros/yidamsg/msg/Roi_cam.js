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

class Roi_cam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.begin_x = null;
      this.begin_y = null;
      this.end_x = null;
      this.end_y = null;
      this.task_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('begin_x')) {
        this.begin_x = initObj.begin_x
      }
      else {
        this.begin_x = [];
      }
      if (initObj.hasOwnProperty('begin_y')) {
        this.begin_y = initObj.begin_y
      }
      else {
        this.begin_y = [];
      }
      if (initObj.hasOwnProperty('end_x')) {
        this.end_x = initObj.end_x
      }
      else {
        this.end_x = [];
      }
      if (initObj.hasOwnProperty('end_y')) {
        this.end_y = initObj.end_y
      }
      else {
        this.end_y = [];
      }
      if (initObj.hasOwnProperty('task_flag')) {
        this.task_flag = initObj.task_flag
      }
      else {
        this.task_flag = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Roi_cam
    // Serialize message field [begin_x]
    bufferOffset = _arraySerializer.int32(obj.begin_x, buffer, bufferOffset, null);
    // Serialize message field [begin_y]
    bufferOffset = _arraySerializer.int32(obj.begin_y, buffer, bufferOffset, null);
    // Serialize message field [end_x]
    bufferOffset = _arraySerializer.int32(obj.end_x, buffer, bufferOffset, null);
    // Serialize message field [end_y]
    bufferOffset = _arraySerializer.int32(obj.end_y, buffer, bufferOffset, null);
    // Serialize message field [task_flag]
    bufferOffset = _serializer.string(obj.task_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Roi_cam
    let len;
    let data = new Roi_cam(null);
    // Deserialize message field [begin_x]
    data.begin_x = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [begin_y]
    data.begin_y = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [end_x]
    data.end_x = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [end_y]
    data.end_y = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [task_flag]
    data.task_flag = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.begin_x.length;
    length += 4 * object.begin_y.length;
    length += 4 * object.end_x.length;
    length += 4 * object.end_y.length;
    length += object.task_flag.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/Roi_cam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e9ac17eb247147b3bbfc2b237c971f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] begin_x
    int32[] begin_y
    int32[] end_x
    int32[] end_y
    string task_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Roi_cam(null);
    if (msg.begin_x !== undefined) {
      resolved.begin_x = msg.begin_x;
    }
    else {
      resolved.begin_x = []
    }

    if (msg.begin_y !== undefined) {
      resolved.begin_y = msg.begin_y;
    }
    else {
      resolved.begin_y = []
    }

    if (msg.end_x !== undefined) {
      resolved.end_x = msg.end_x;
    }
    else {
      resolved.end_x = []
    }

    if (msg.end_y !== undefined) {
      resolved.end_y = msg.end_y;
    }
    else {
      resolved.end_y = []
    }

    if (msg.task_flag !== undefined) {
      resolved.task_flag = msg.task_flag;
    }
    else {
      resolved.task_flag = ''
    }

    return resolved;
    }
};

module.exports = Roi_cam;
