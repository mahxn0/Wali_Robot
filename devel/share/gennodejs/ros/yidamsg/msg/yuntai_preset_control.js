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

class yuntai_preset_control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.horizontal = null;
      this.vertical = null;
      this.focus = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('horizontal')) {
        this.horizontal = initObj.horizontal
      }
      else {
        this.horizontal = 0;
      }
      if (initObj.hasOwnProperty('vertical')) {
        this.vertical = initObj.vertical
      }
      else {
        this.vertical = 0;
      }
      if (initObj.hasOwnProperty('focus')) {
        this.focus = initObj.focus
      }
      else {
        this.focus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type yuntai_preset_control
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [horizontal]
    bufferOffset = _serializer.int32(obj.horizontal, buffer, bufferOffset);
    // Serialize message field [vertical]
    bufferOffset = _serializer.int32(obj.vertical, buffer, bufferOffset);
    // Serialize message field [focus]
    bufferOffset = _serializer.int32(obj.focus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type yuntai_preset_control
    let len;
    let data = new yuntai_preset_control(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [horizontal]
    data.horizontal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vertical]
    data.vertical = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [focus]
    data.focus = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/yuntai_preset_control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c1b995bdb29e4b1c0fa2508de065fb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 horizontal
    int32 vertical
    int32 focus
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new yuntai_preset_control(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.horizontal !== undefined) {
      resolved.horizontal = msg.horizontal;
    }
    else {
      resolved.horizontal = 0
    }

    if (msg.vertical !== undefined) {
      resolved.vertical = msg.vertical;
    }
    else {
      resolved.vertical = 0
    }

    if (msg.focus !== undefined) {
      resolved.focus = msg.focus;
    }
    else {
      resolved.focus = 0
    }

    return resolved;
    }
};

module.exports = yuntai_preset_control;
