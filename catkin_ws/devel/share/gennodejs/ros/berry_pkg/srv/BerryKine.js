// Auto-generated. Do not edit!

// (in-package berry_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class BerryKineRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.th1 = null;
      this.th2 = null;
      this.th3 = null;
      this.th4 = null;
    }
    else {
      if (initObj.hasOwnProperty('th1')) {
        this.th1 = initObj.th1
      }
      else {
        this.th1 = 0.0;
      }
      if (initObj.hasOwnProperty('th2')) {
        this.th2 = initObj.th2
      }
      else {
        this.th2 = 0.0;
      }
      if (initObj.hasOwnProperty('th3')) {
        this.th3 = initObj.th3
      }
      else {
        this.th3 = 0.0;
      }
      if (initObj.hasOwnProperty('th4')) {
        this.th4 = initObj.th4
      }
      else {
        this.th4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BerryKineRequest
    // Serialize message field [th1]
    bufferOffset = _serializer.float32(obj.th1, buffer, bufferOffset);
    // Serialize message field [th2]
    bufferOffset = _serializer.float32(obj.th2, buffer, bufferOffset);
    // Serialize message field [th3]
    bufferOffset = _serializer.float32(obj.th3, buffer, bufferOffset);
    // Serialize message field [th4]
    bufferOffset = _serializer.float32(obj.th4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BerryKineRequest
    let len;
    let data = new BerryKineRequest(null);
    // Deserialize message field [th1]
    data.th1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [th2]
    data.th2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [th3]
    data.th3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [th4]
    data.th4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'berry_pkg/BerryKineRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '594612446cef3f3c199cf8e08890d836';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 th1
    float32 th2
    float32 th3
    float32 th4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BerryKineRequest(null);
    if (msg.th1 !== undefined) {
      resolved.th1 = msg.th1;
    }
    else {
      resolved.th1 = 0.0
    }

    if (msg.th2 !== undefined) {
      resolved.th2 = msg.th2;
    }
    else {
      resolved.th2 = 0.0
    }

    if (msg.th3 !== undefined) {
      resolved.th3 = msg.th3;
    }
    else {
      resolved.th3 = 0.0
    }

    if (msg.th4 !== undefined) {
      resolved.th4 = msg.th4;
    }
    else {
      resolved.th4 = 0.0
    }

    return resolved;
    }
};

class BerryKineResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.a = null;
    }
    else {
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
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BerryKineResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float32(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BerryKineResponse
    let len;
    let data = new BerryKineResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'berry_pkg/BerryKineResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '048816fafbfc26a9b1dace8fa24075f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 z
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BerryKineResponse(null);
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

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: BerryKineRequest,
  Response: BerryKineResponse,
  md5sum() { return 'b7b8c1b034c1b069bff5d6c113f05355'; },
  datatype() { return 'berry_pkg/BerryKine'; }
};
