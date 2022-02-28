// Auto-generated. Do not edit!

// (in-package berry_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BerrySetAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.th1 = null;
      this.th2 = null;
      this.th3 = null;
      this.th4 = null;
      this.angle1 = null;
      this.angle2 = null;
      this.angle3 = null;
      this.angle4 = null;
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
      if (initObj.hasOwnProperty('angle1')) {
        this.angle1 = initObj.angle1
      }
      else {
        this.angle1 = 0.0;
      }
      if (initObj.hasOwnProperty('angle2')) {
        this.angle2 = initObj.angle2
      }
      else {
        this.angle2 = 0.0;
      }
      if (initObj.hasOwnProperty('angle3')) {
        this.angle3 = initObj.angle3
      }
      else {
        this.angle3 = 0.0;
      }
      if (initObj.hasOwnProperty('angle4')) {
        this.angle4 = initObj.angle4
      }
      else {
        this.angle4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BerrySetAngle
    // Serialize message field [th1]
    bufferOffset = _serializer.float32(obj.th1, buffer, bufferOffset);
    // Serialize message field [th2]
    bufferOffset = _serializer.float32(obj.th2, buffer, bufferOffset);
    // Serialize message field [th3]
    bufferOffset = _serializer.float32(obj.th3, buffer, bufferOffset);
    // Serialize message field [th4]
    bufferOffset = _serializer.float32(obj.th4, buffer, bufferOffset);
    // Serialize message field [angle1]
    bufferOffset = _serializer.float32(obj.angle1, buffer, bufferOffset);
    // Serialize message field [angle2]
    bufferOffset = _serializer.float32(obj.angle2, buffer, bufferOffset);
    // Serialize message field [angle3]
    bufferOffset = _serializer.float32(obj.angle3, buffer, bufferOffset);
    // Serialize message field [angle4]
    bufferOffset = _serializer.float32(obj.angle4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BerrySetAngle
    let len;
    let data = new BerrySetAngle(null);
    // Deserialize message field [th1]
    data.th1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [th2]
    data.th2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [th3]
    data.th3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [th4]
    data.th4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle1]
    data.angle1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle2]
    data.angle2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle3]
    data.angle3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle4]
    data.angle4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'berry_pkg/BerrySetAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97b3b82c09f87a6730ecaae04f0b974e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 th1
    float32 th2
    float32 th3
    float32 th4
    float32 angle1
    float32 angle2
    float32 angle3
    float32 angle4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BerrySetAngle(null);
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

    if (msg.angle1 !== undefined) {
      resolved.angle1 = msg.angle1;
    }
    else {
      resolved.angle1 = 0.0
    }

    if (msg.angle2 !== undefined) {
      resolved.angle2 = msg.angle2;
    }
    else {
      resolved.angle2 = 0.0
    }

    if (msg.angle3 !== undefined) {
      resolved.angle3 = msg.angle3;
    }
    else {
      resolved.angle3 = 0.0
    }

    if (msg.angle4 !== undefined) {
      resolved.angle4 = msg.angle4;
    }
    else {
      resolved.angle4 = 0.0
    }

    return resolved;
    }
};

module.exports = BerrySetAngle;
