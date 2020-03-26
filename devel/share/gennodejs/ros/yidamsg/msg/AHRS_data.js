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

class AHRS_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.anglex = null;
      this.angley = null;
      this.anglez = null;
    }
    else {
      if (initObj.hasOwnProperty('anglex')) {
        this.anglex = initObj.anglex
      }
      else {
        this.anglex = 0.0;
      }
      if (initObj.hasOwnProperty('angley')) {
        this.angley = initObj.angley
      }
      else {
        this.angley = 0.0;
      }
      if (initObj.hasOwnProperty('anglez')) {
        this.anglez = initObj.anglez
      }
      else {
        this.anglez = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AHRS_data
    // Serialize message field [anglex]
    bufferOffset = _serializer.float32(obj.anglex, buffer, bufferOffset);
    // Serialize message field [angley]
    bufferOffset = _serializer.float32(obj.angley, buffer, bufferOffset);
    // Serialize message field [anglez]
    bufferOffset = _serializer.float32(obj.anglez, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AHRS_data
    let len;
    let data = new AHRS_data(null);
    // Deserialize message field [anglex]
    data.anglex = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angley]
    data.angley = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [anglez]
    data.anglez = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/AHRS_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '013b565a7d88e68adfcd16c0a3dea0d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 anglex
    float32 angley
    float32 anglez
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AHRS_data(null);
    if (msg.anglex !== undefined) {
      resolved.anglex = msg.anglex;
    }
    else {
      resolved.anglex = 0.0
    }

    if (msg.angley !== undefined) {
      resolved.angley = msg.angley;
    }
    else {
      resolved.angley = 0.0
    }

    if (msg.anglez !== undefined) {
      resolved.anglez = msg.anglez;
    }
    else {
      resolved.anglez = 0.0
    }

    return resolved;
    }
};

module.exports = AHRS_data;
