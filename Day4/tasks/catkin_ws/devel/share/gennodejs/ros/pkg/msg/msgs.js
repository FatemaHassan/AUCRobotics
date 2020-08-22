// Auto-generated. Do not edit!

// (in-package pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first = null;
      this.second = null;
      this.ouput = null;
    }
    else {
      if (initObj.hasOwnProperty('first')) {
        this.first = initObj.first
      }
      else {
        this.first = 0;
      }
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = 0;
      }
      if (initObj.hasOwnProperty('ouput')) {
        this.ouput = initObj.ouput
      }
      else {
        this.ouput = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgs
    // Serialize message field [first]
    bufferOffset = _serializer.uint32(obj.first, buffer, bufferOffset);
    // Serialize message field [second]
    bufferOffset = _serializer.uint32(obj.second, buffer, bufferOffset);
    // Serialize message field [ouput]
    bufferOffset = _serializer.string(obj.ouput, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgs
    let len;
    let data = new msgs(null);
    // Deserialize message field [first]
    data.first = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [second]
    data.second = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ouput]
    data.ouput = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ouput.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pkg/msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f79bb8aaacd7d31ffc3bb63e0298610a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 first
    uint32 second
    string ouput
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgs(null);
    if (msg.first !== undefined) {
      resolved.first = msg.first;
    }
    else {
      resolved.first = 0
    }

    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = 0
    }

    if (msg.ouput !== undefined) {
      resolved.ouput = msg.ouput;
    }
    else {
      resolved.ouput = ''
    }

    return resolved;
    }
};

module.exports = msgs;
