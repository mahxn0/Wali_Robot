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

class walle_wakeup {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wakeup = null;
      this.score = null;
      this.key_word = null;
    }
    else {
      if (initObj.hasOwnProperty('wakeup')) {
        this.wakeup = initObj.wakeup
      }
      else {
        this.wakeup = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0;
      }
      if (initObj.hasOwnProperty('key_word')) {
        this.key_word = initObj.key_word
      }
      else {
        this.key_word = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type walle_wakeup
    // Serialize message field [wakeup]
    bufferOffset = _serializer.int32(obj.wakeup, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.int32(obj.score, buffer, bufferOffset);
    // Serialize message field [key_word]
    bufferOffset = _serializer.string(obj.key_word, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type walle_wakeup
    let len;
    let data = new walle_wakeup(null);
    // Deserialize message field [wakeup]
    data.wakeup = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [key_word]
    data.key_word = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key_word.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/walle_wakeup';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b832037d6e61fd58c7aa70efb2709b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 wakeup
    int32 score
    string key_word
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new walle_wakeup(null);
    if (msg.wakeup !== undefined) {
      resolved.wakeup = msg.wakeup;
    }
    else {
      resolved.wakeup = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0
    }

    if (msg.key_word !== undefined) {
      resolved.key_word = msg.key_word;
    }
    else {
      resolved.key_word = ''
    }

    return resolved;
    }
};

module.exports = walle_wakeup;
