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

class CaptureImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camid = null;
      this.picid = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.image = null;
      this.len = null;
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
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = [];
      }
      if (initObj.hasOwnProperty('len')) {
        this.len = initObj.len
      }
      else {
        this.len = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CaptureImage
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
    // Serialize message field [image]
    bufferOffset = _arraySerializer.uint8(obj.image, buffer, bufferOffset, null);
    // Serialize message field [len]
    bufferOffset = _serializer.int32(obj.len, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CaptureImage
    let len;
    let data = new CaptureImage(null);
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
    // Deserialize message field [image]
    data.image = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [len]
    data.len = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.image.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/CaptureImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0feb94226f96ec22fa7dd4d4207a32a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 camid
    int32 picid
    float32 x
    float32 y
    float32 z
    uint8[] image
    int32 len
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CaptureImage(null);
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

    if (msg.image !== undefined) {
      resolved.image = msg.image;
    }
    else {
      resolved.image = []
    }

    if (msg.len !== undefined) {
      resolved.len = msg.len;
    }
    else {
      resolved.len = 0
    }

    return resolved;
    }
};

module.exports = CaptureImage;
