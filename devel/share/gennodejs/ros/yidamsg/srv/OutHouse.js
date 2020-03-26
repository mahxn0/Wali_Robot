// Auto-generated. Do not edit!

// (in-package yidamsg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class OutHouseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OutHouseRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OutHouseRequest
    let len;
    let data = new OutHouseRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yidamsg/OutHouseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OutHouseRequest(null);
    return resolved;
    }
};

class OutHouseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isdone = null;
    }
    else {
      if (initObj.hasOwnProperty('isdone')) {
        this.isdone = initObj.isdone
      }
      else {
        this.isdone = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OutHouseResponse
    // Serialize message field [isdone]
    bufferOffset = _serializer.bool(obj.isdone, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OutHouseResponse
    let len;
    let data = new OutHouseResponse(null);
    // Deserialize message field [isdone]
    data.isdone = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yidamsg/OutHouseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '155f126039916cf5358a013a0efc2beb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isdone
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OutHouseResponse(null);
    if (msg.isdone !== undefined) {
      resolved.isdone = msg.isdone;
    }
    else {
      resolved.isdone = false
    }

    return resolved;
    }
};

module.exports = {
  Request: OutHouseRequest,
  Response: OutHouseResponse,
  md5sum() { return '155f126039916cf5358a013a0efc2beb'; },
  datatype() { return 'yidamsg/OutHouse'; }
};
