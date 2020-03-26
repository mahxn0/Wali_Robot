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

class OriginWeather {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pressure = null;
      this.temperature = null;
      this.humidity = null;
      this.illumination = null;
      this.windspeed = null;
      this.winddirection = null;
      this.rainorsnow = null;
    }
    else {
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('humidity')) {
        this.humidity = initObj.humidity
      }
      else {
        this.humidity = 0;
      }
      if (initObj.hasOwnProperty('illumination')) {
        this.illumination = initObj.illumination
      }
      else {
        this.illumination = 0;
      }
      if (initObj.hasOwnProperty('windspeed')) {
        this.windspeed = initObj.windspeed
      }
      else {
        this.windspeed = 0;
      }
      if (initObj.hasOwnProperty('winddirection')) {
        this.winddirection = initObj.winddirection
      }
      else {
        this.winddirection = 0;
      }
      if (initObj.hasOwnProperty('rainorsnow')) {
        this.rainorsnow = initObj.rainorsnow
      }
      else {
        this.rainorsnow = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OriginWeather
    // Serialize message field [pressure]
    bufferOffset = _serializer.int32(obj.pressure, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.int32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [humidity]
    bufferOffset = _serializer.int32(obj.humidity, buffer, bufferOffset);
    // Serialize message field [illumination]
    bufferOffset = _serializer.int32(obj.illumination, buffer, bufferOffset);
    // Serialize message field [windspeed]
    bufferOffset = _serializer.int32(obj.windspeed, buffer, bufferOffset);
    // Serialize message field [winddirection]
    bufferOffset = _serializer.int32(obj.winddirection, buffer, bufferOffset);
    // Serialize message field [rainorsnow]
    bufferOffset = _serializer.int32(obj.rainorsnow, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OriginWeather
    let len;
    let data = new OriginWeather(null);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [humidity]
    data.humidity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [illumination]
    data.illumination = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [windspeed]
    data.windspeed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [winddirection]
    data.winddirection = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rainorsnow]
    data.rainorsnow = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yidamsg/OriginWeather';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8f36e3f2096377d234886a58cfe782a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pressure
    int32 temperature
    int32 humidity
    int32 illumination
    int32 windspeed
    int32 winddirection
    int32 rainorsnow
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OriginWeather(null);
    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.humidity !== undefined) {
      resolved.humidity = msg.humidity;
    }
    else {
      resolved.humidity = 0
    }

    if (msg.illumination !== undefined) {
      resolved.illumination = msg.illumination;
    }
    else {
      resolved.illumination = 0
    }

    if (msg.windspeed !== undefined) {
      resolved.windspeed = msg.windspeed;
    }
    else {
      resolved.windspeed = 0
    }

    if (msg.winddirection !== undefined) {
      resolved.winddirection = msg.winddirection;
    }
    else {
      resolved.winddirection = 0
    }

    if (msg.rainorsnow !== undefined) {
      resolved.rainorsnow = msg.rainorsnow;
    }
    else {
      resolved.rainorsnow = 0
    }

    return resolved;
    }
};

module.exports = OriginWeather;
