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

class image {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pImgBuf1 = null;
      this.pImgBuf2 = null;
      this.width = null;
      this.height = null;
      this.id1 = null;
      this.id2 = null;
      this.length1 = null;
      this.length2 = null;
    }
    else {
      if (initObj.hasOwnProperty('pImgBuf1')) {
        this.pImgBuf1 = initObj.pImgBuf1
      }
      else {
        this.pImgBuf1 = new Array(200000).fill(0);
      }
      if (initObj.hasOwnProperty('pImgBuf2')) {
        this.pImgBuf2 = initObj.pImgBuf2
      }
      else {
        this.pImgBuf2 = new Array(200000).fill(0);
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('id1')) {
        this.id1 = initObj.id1
      }
      else {
        this.id1 = 0;
      }
      if (initObj.hasOwnProperty('id2')) {
        this.id2 = initObj.id2
      }
      else {
        this.id2 = 0;
      }
      if (initObj.hasOwnProperty('length1')) {
        this.length1 = initObj.length1
      }
      else {
        this.length1 = 0;
      }
      if (initObj.hasOwnProperty('length2')) {
        this.length2 = initObj.length2
      }
      else {
        this.length2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type image
    // Check that the constant length array field [pImgBuf1] has the right length
    if (obj.pImgBuf1.length !== 200000) {
      throw new Error('Unable to serialize array field pImgBuf1 - length must be 200000')
    }
    // Serialize message field [pImgBuf1]
    bufferOffset = _arraySerializer.uint8(obj.pImgBuf1, buffer, bufferOffset, 200000);
    // Check that the constant length array field [pImgBuf2] has the right length
    if (obj.pImgBuf2.length !== 200000) {
      throw new Error('Unable to serialize array field pImgBuf2 - length must be 200000')
    }
    // Serialize message field [pImgBuf2]
    bufferOffset = _arraySerializer.uint8(obj.pImgBuf2, buffer, bufferOffset, 200000);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [id1]
    bufferOffset = _serializer.int32(obj.id1, buffer, bufferOffset);
    // Serialize message field [id2]
    bufferOffset = _serializer.int32(obj.id2, buffer, bufferOffset);
    // Serialize message field [length1]
    bufferOffset = _serializer.int32(obj.length1, buffer, bufferOffset);
    // Serialize message field [length2]
    bufferOffset = _serializer.int32(obj.length2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type image
    let len;
    let data = new image(null);
    // Deserialize message field [pImgBuf1]
    data.pImgBuf1 = _arrayDeserializer.uint8(buffer, bufferOffset, 200000)
    // Deserialize message field [pImgBuf2]
    data.pImgBuf2 = _arrayDeserializer.uint8(buffer, bufferOffset, 200000)
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id1]
    data.id1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id2]
    data.id2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length1]
    data.length1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length2]
    data.length2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 400024;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/image';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd49f80c06464cb3dde6b4fc6f30be9fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[200000] pImgBuf1
    uint8[200000] pImgBuf2
    int32 width
    int32 height
    int32 id1
    int32 id2
    int32 length1
    int32 length2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new image(null);
    if (msg.pImgBuf1 !== undefined) {
      resolved.pImgBuf1 = msg.pImgBuf1;
    }
    else {
      resolved.pImgBuf1 = new Array(200000).fill(0)
    }

    if (msg.pImgBuf2 !== undefined) {
      resolved.pImgBuf2 = msg.pImgBuf2;
    }
    else {
      resolved.pImgBuf2 = new Array(200000).fill(0)
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.id1 !== undefined) {
      resolved.id1 = msg.id1;
    }
    else {
      resolved.id1 = 0
    }

    if (msg.id2 !== undefined) {
      resolved.id2 = msg.id2;
    }
    else {
      resolved.id2 = 0
    }

    if (msg.length1 !== undefined) {
      resolved.length1 = msg.length1;
    }
    else {
      resolved.length1 = 0
    }

    if (msg.length2 !== undefined) {
      resolved.length2 = msg.length2;
    }
    else {
      resolved.length2 = 0
    }

    return resolved;
    }
};

module.exports = image;
