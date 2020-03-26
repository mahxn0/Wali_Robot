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

class isInAutoChargerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type isInAutoChargerRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type isInAutoChargerRequest
    let len;
    let data = new isInAutoChargerRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yidamsg/isInAutoChargerRequest';
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
    const resolved = new isInAutoChargerRequest(null);
    return resolved;
    }
};

class isInAutoChargerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isCharging = null;
    }
    else {
      if (initObj.hasOwnProperty('isCharging')) {
        this.isCharging = initObj.isCharging
      }
      else {
        this.isCharging = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type isInAutoChargerResponse
    // Serialize message field [isCharging]
    bufferOffset = _serializer.int32(obj.isCharging, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type isInAutoChargerResponse
    let len;
    let data = new isInAutoChargerResponse(null);
    // Deserialize message field [isCharging]
    data.isCharging = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yidamsg/isInAutoChargerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aec8fd091cfc40eae9abfae81e035982';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 isCharging
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new isInAutoChargerResponse(null);
    if (msg.isCharging !== undefined) {
      resolved.isCharging = msg.isCharging;
    }
    else {
      resolved.isCharging = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: isInAutoChargerRequest,
  Response: isInAutoChargerResponse,
  md5sum() { return 'aec8fd091cfc40eae9abfae81e035982'; },
  datatype() { return 'yidamsg/isInAutoCharger'; }
};
