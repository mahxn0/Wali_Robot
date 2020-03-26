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

class DBTableUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.table_id = null;
    }
    else {
      if (initObj.hasOwnProperty('table_id')) {
        this.table_id = initObj.table_id
      }
      else {
        this.table_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DBTableUpdate
    // Serialize message field [table_id]
    bufferOffset = _serializer.uint8(obj.table_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DBTableUpdate
    let len;
    let data = new DBTableUpdate(null);
    // Deserialize message field [table_id]
    data.table_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/DBTableUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad519c9257e2c4fe302696830015c294';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 table_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DBTableUpdate(null);
    if (msg.table_id !== undefined) {
      resolved.table_id = msg.table_id;
    }
    else {
      resolved.table_id = 0
    }

    return resolved;
    }
};

module.exports = DBTableUpdate;
