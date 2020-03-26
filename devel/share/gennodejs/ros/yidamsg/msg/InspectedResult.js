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

class InspectedResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camid = null;
      this.picid = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.equipimage = null;
      this.nameplates = null;
      this.equipid = null;
      this.result = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('camid')) {
        this.camid = initObj.camid
      }
      else {
        this.camid = 0;
      }
      if (initObj.hasOwnProperty('picid')) {
        this.picid = initObj.picid
      }
      else {
        this.picid = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('equipimage')) {
        this.equipimage = initObj.equipimage
      }
      else {
        this.equipimage = [];
      }
      if (initObj.hasOwnProperty('nameplates')) {
        this.nameplates = initObj.nameplates
      }
      else {
        this.nameplates = [];
      }
      if (initObj.hasOwnProperty('equipid')) {
        this.equipid = initObj.equipid
      }
      else {
        this.equipid = '';
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InspectedResult
    // Serialize message field [camid]
    bufferOffset = _serializer.int32(obj.camid, buffer, bufferOffset);
    // Serialize message field [picid]
    bufferOffset = _serializer.int32(obj.picid, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [equipimage]
    bufferOffset = _arraySerializer.uint8(obj.equipimage, buffer, bufferOffset, null);
    // Serialize message field [nameplates]
    bufferOffset = _arraySerializer.uint8(obj.nameplates, buffer, bufferOffset, null);
    // Serialize message field [equipid]
    bufferOffset = _serializer.string(obj.equipid, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InspectedResult
    let len;
    let data = new InspectedResult(null);
    // Deserialize message field [camid]
    data.camid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [picid]
    data.picid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [equipimage]
    data.equipimage = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [nameplates]
    data.nameplates = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [equipid]
    data.equipid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.equipimage.length;
    length += object.nameplates.length;
    length += object.equipid.length;
    length += object.result.length;
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/InspectedResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5099b70cbd9d8bb23d365d2dd09bd90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 camid
    int32 picid
    float32 x
    float32 y
    float32 z
    uint8[] equipimage
    uint8[] nameplates
    string equipid
    string result
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InspectedResult(null);
    if (msg.camid !== undefined) {
      resolved.camid = msg.camid;
    }
    else {
      resolved.camid = 0
    }

    if (msg.picid !== undefined) {
      resolved.picid = msg.picid;
    }
    else {
      resolved.picid = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.equipimage !== undefined) {
      resolved.equipimage = msg.equipimage;
    }
    else {
      resolved.equipimage = []
    }

    if (msg.nameplates !== undefined) {
      resolved.nameplates = msg.nameplates;
    }
    else {
      resolved.nameplates = []
    }

    if (msg.equipid !== undefined) {
      resolved.equipid = msg.equipid;
    }
    else {
      resolved.equipid = ''
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = InspectedResult;
