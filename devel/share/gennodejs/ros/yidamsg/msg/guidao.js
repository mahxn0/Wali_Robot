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

class guidao {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rec_method = null;
      this.rec_name = null;
      this.dec_hat = null;
      this.dec_glove = null;
      this.dec_shoe = null;
      this.rail = null;
      this.safety_belt = null;
      this.alam = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('rec_method')) {
        this.rec_method = initObj.rec_method
      }
      else {
        this.rec_method = '';
      }
      if (initObj.hasOwnProperty('rec_name')) {
        this.rec_name = initObj.rec_name
      }
      else {
        this.rec_name = '';
      }
      if (initObj.hasOwnProperty('dec_hat')) {
        this.dec_hat = initObj.dec_hat
      }
      else {
        this.dec_hat = 0;
      }
      if (initObj.hasOwnProperty('dec_glove')) {
        this.dec_glove = initObj.dec_glove
      }
      else {
        this.dec_glove = 0;
      }
      if (initObj.hasOwnProperty('dec_shoe')) {
        this.dec_shoe = initObj.dec_shoe
      }
      else {
        this.dec_shoe = 0;
      }
      if (initObj.hasOwnProperty('rail')) {
        this.rail = initObj.rail
      }
      else {
        this.rail = 0;
      }
      if (initObj.hasOwnProperty('safety_belt')) {
        this.safety_belt = initObj.safety_belt
      }
      else {
        this.safety_belt = 0;
      }
      if (initObj.hasOwnProperty('alam')) {
        this.alam = initObj.alam
      }
      else {
        this.alam = '';
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type guidao
    // Serialize message field [rec_method]
    bufferOffset = _serializer.string(obj.rec_method, buffer, bufferOffset);
    // Serialize message field [rec_name]
    bufferOffset = _serializer.string(obj.rec_name, buffer, bufferOffset);
    // Serialize message field [dec_hat]
    bufferOffset = _serializer.int32(obj.dec_hat, buffer, bufferOffset);
    // Serialize message field [dec_glove]
    bufferOffset = _serializer.int32(obj.dec_glove, buffer, bufferOffset);
    // Serialize message field [dec_shoe]
    bufferOffset = _serializer.int32(obj.dec_shoe, buffer, bufferOffset);
    // Serialize message field [rail]
    bufferOffset = _serializer.int32(obj.rail, buffer, bufferOffset);
    // Serialize message field [safety_belt]
    bufferOffset = _serializer.int32(obj.safety_belt, buffer, bufferOffset);
    // Serialize message field [alam]
    bufferOffset = _serializer.string(obj.alam, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type guidao
    let len;
    let data = new guidao(null);
    // Deserialize message field [rec_method]
    data.rec_method = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rec_name]
    data.rec_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dec_hat]
    data.dec_hat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dec_glove]
    data.dec_glove = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dec_shoe]
    data.dec_shoe = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rail]
    data.rail = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [safety_belt]
    data.safety_belt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alam]
    data.alam = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.rec_method.length;
    length += object.rec_name.length;
    length += object.alam.length;
    length += object.action.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/guidao';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f7b72245dfc6166afb75ac5cae3a673';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string rec_method
    string rec_name
    int32 dec_hat
    int32 dec_glove
    int32 dec_shoe
    int32 rail
    int32 safety_belt
    string alam
    string action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new guidao(null);
    if (msg.rec_method !== undefined) {
      resolved.rec_method = msg.rec_method;
    }
    else {
      resolved.rec_method = ''
    }

    if (msg.rec_name !== undefined) {
      resolved.rec_name = msg.rec_name;
    }
    else {
      resolved.rec_name = ''
    }

    if (msg.dec_hat !== undefined) {
      resolved.dec_hat = msg.dec_hat;
    }
    else {
      resolved.dec_hat = 0
    }

    if (msg.dec_glove !== undefined) {
      resolved.dec_glove = msg.dec_glove;
    }
    else {
      resolved.dec_glove = 0
    }

    if (msg.dec_shoe !== undefined) {
      resolved.dec_shoe = msg.dec_shoe;
    }
    else {
      resolved.dec_shoe = 0
    }

    if (msg.rail !== undefined) {
      resolved.rail = msg.rail;
    }
    else {
      resolved.rail = 0
    }

    if (msg.safety_belt !== undefined) {
      resolved.safety_belt = msg.safety_belt;
    }
    else {
      resolved.safety_belt = 0
    }

    if (msg.alam !== undefined) {
      resolved.alam = msg.alam;
    }
    else {
      resolved.alam = ''
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    return resolved;
    }
};

module.exports = guidao;
