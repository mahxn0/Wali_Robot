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

class Roi_2d {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.id = null;
      this.x = null;
      this.y = null;
      this.end_x = null;
      this.end_y = null;
      this.prob = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('end_x')) {
        this.end_x = initObj.end_x
      }
      else {
        this.end_x = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('end_y')) {
        this.end_y = initObj.end_y
      }
      else {
        this.end_y = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = new Array(10).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Roi_2d
    // Serialize message field [label]
    bufferOffset = _serializer.int32(obj.label, buffer, bufferOffset);
    // Check that the constant length array field [id] has the right length
    if (obj.id.length !== 10) {
      throw new Error('Unable to serialize array field id - length must be 10')
    }
    // Serialize message field [id]
    bufferOffset = _arraySerializer.int32(obj.id, buffer, bufferOffset, 10);
    // Check that the constant length array field [x] has the right length
    if (obj.x.length !== 10) {
      throw new Error('Unable to serialize array field x - length must be 10')
    }
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, 10);
    // Check that the constant length array field [y] has the right length
    if (obj.y.length !== 10) {
      throw new Error('Unable to serialize array field y - length must be 10')
    }
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, 10);
    // Check that the constant length array field [end_x] has the right length
    if (obj.end_x.length !== 10) {
      throw new Error('Unable to serialize array field end_x - length must be 10')
    }
    // Serialize message field [end_x]
    bufferOffset = _arraySerializer.float32(obj.end_x, buffer, bufferOffset, 10);
    // Check that the constant length array field [end_y] has the right length
    if (obj.end_y.length !== 10) {
      throw new Error('Unable to serialize array field end_y - length must be 10')
    }
    // Serialize message field [end_y]
    bufferOffset = _arraySerializer.float32(obj.end_y, buffer, bufferOffset, 10);
    // Check that the constant length array field [prob] has the right length
    if (obj.prob.length !== 10) {
      throw new Error('Unable to serialize array field prob - length must be 10')
    }
    // Serialize message field [prob]
    bufferOffset = _arraySerializer.float32(obj.prob, buffer, bufferOffset, 10);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Roi_2d
    let len;
    let data = new Roi_2d(null);
    // Deserialize message field [label]
    data.label = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.int32(buffer, bufferOffset, 10)
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    // Deserialize message field [end_x]
    data.end_x = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    // Deserialize message field [end_y]
    data.end_y = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    // Deserialize message field [prob]
    data.prob = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    return data;
  }

  static getMessageSize(object) {
    return 244;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/Roi_2d';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a085707da4760a19e76a88dea363e6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 label
    int32[10] id
    float32[10] x
    float32[10] y
    float32[10] end_x
    float32[10] end_y
    float32[10] prob
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Roi_2d(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = new Array(10).fill(0)
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = new Array(10).fill(0)
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = new Array(10).fill(0)
    }

    if (msg.end_x !== undefined) {
      resolved.end_x = msg.end_x;
    }
    else {
      resolved.end_x = new Array(10).fill(0)
    }

    if (msg.end_y !== undefined) {
      resolved.end_y = msg.end_y;
    }
    else {
      resolved.end_y = new Array(10).fill(0)
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = new Array(10).fill(0)
    }

    return resolved;
    }
};

module.exports = Roi_2d;
