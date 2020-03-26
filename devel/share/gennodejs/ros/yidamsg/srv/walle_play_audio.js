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

class walle_play_audioRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_path = null;
      this.file_type = null;
      this.audio_file_id = null;
    }
    else {
      if (initObj.hasOwnProperty('file_path')) {
        this.file_path = initObj.file_path
      }
      else {
        this.file_path = '';
      }
      if (initObj.hasOwnProperty('file_type')) {
        this.file_type = initObj.file_type
      }
      else {
        this.file_type = 0;
      }
      if (initObj.hasOwnProperty('audio_file_id')) {
        this.audio_file_id = initObj.audio_file_id
      }
      else {
        this.audio_file_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type walle_play_audioRequest
    // Serialize message field [file_path]
    bufferOffset = _serializer.string(obj.file_path, buffer, bufferOffset);
    // Serialize message field [file_type]
    bufferOffset = _serializer.int32(obj.file_type, buffer, bufferOffset);
    // Serialize message field [audio_file_id]
    bufferOffset = _serializer.int32(obj.audio_file_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type walle_play_audioRequest
    let len;
    let data = new walle_play_audioRequest(null);
    // Deserialize message field [file_path]
    data.file_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [file_type]
    data.file_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [audio_file_id]
    data.audio_file_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_path.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yidamsg/walle_play_audioRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '332ce3a2c780b6dcdb3659766440d67e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string file_path
    int32 file_type
    int32 audio_file_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new walle_play_audioRequest(null);
    if (msg.file_path !== undefined) {
      resolved.file_path = msg.file_path;
    }
    else {
      resolved.file_path = ''
    }

    if (msg.file_type !== undefined) {
      resolved.file_type = msg.file_type;
    }
    else {
      resolved.file_type = 0
    }

    if (msg.audio_file_id !== undefined) {
      resolved.audio_file_id = msg.audio_file_id;
    }
    else {
      resolved.audio_file_id = 0
    }

    return resolved;
    }
};

class walle_play_audioResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type walle_play_audioResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type walle_play_audioResponse
    let len;
    let data = new walle_play_audioResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yidamsg/walle_play_audioResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fc2716b6a54000ffececb9430b5e899';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    int8 status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new walle_play_audioResponse(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: walle_play_audioRequest,
  Response: walle_play_audioResponse,
  md5sum() { return '1b4b6be30129215f962c2b865c54cf1f'; },
  datatype() { return 'yidamsg/walle_play_audio'; }
};
