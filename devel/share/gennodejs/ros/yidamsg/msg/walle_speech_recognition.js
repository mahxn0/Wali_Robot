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

class walle_speech_recognition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
      this.cmd_id = null;
      this.txt = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_id')) {
        this.cmd_id = initObj.cmd_id
      }
      else {
        this.cmd_id = 0;
      }
      if (initObj.hasOwnProperty('txt')) {
        this.txt = initObj.txt
      }
      else {
        this.txt = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type walle_speech_recognition
    // Serialize message field [direction]
    bufferOffset = _serializer.float32(obj.direction, buffer, bufferOffset);
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.int32(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [txt]
    bufferOffset = _serializer.string(obj.txt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type walle_speech_recognition
    let len;
    let data = new walle_speech_recognition(null);
    // Deserialize message field [direction]
    data.direction = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [txt]
    data.txt = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.txt.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/walle_speech_recognition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c1479f10a37544af7437fcac2573154';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 direction
    int32 cmd_id
    string txt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new walle_speech_recognition(null);
    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0.0
    }

    if (msg.cmd_id !== undefined) {
      resolved.cmd_id = msg.cmd_id;
    }
    else {
      resolved.cmd_id = 0
    }

    if (msg.txt !== undefined) {
      resolved.txt = msg.txt;
    }
    else {
      resolved.txt = ''
    }

    return resolved;
    }
};

module.exports = walle_speech_recognition;
