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

class car_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.left_data = null;
      this.right_data = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('left_data')) {
        this.left_data = initObj.left_data
      }
      else {
        this.left_data = [];
      }
      if (initObj.hasOwnProperty('right_data')) {
        this.right_data = initObj.right_data
      }
      else {
        this.right_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type car_status
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [left_data]
    bufferOffset = _arraySerializer.float32(obj.left_data, buffer, bufferOffset, null);
    // Serialize message field [right_data]
    bufferOffset = _arraySerializer.float32(obj.right_data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type car_status
    let len;
    let data = new car_status(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left_data]
    data.left_data = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [right_data]
    data.right_data = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += 4 * object.left_data.length;
    length += 4 * object.right_data.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/car_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0fdc85453ace119bca6040d3b417a15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    float32[] left_data
    float32[] right_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new car_status(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.left_data !== undefined) {
      resolved.left_data = msg.left_data;
    }
    else {
      resolved.left_data = []
    }

    if (msg.right_data !== undefined) {
      resolved.right_data = msg.right_data;
    }
    else {
      resolved.right_data = []
    }

    return resolved;
    }
};

module.exports = car_status;
