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

class BerryGetPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id1 = null;
      this.id2 = null;
      this.id3 = null;
      this.id4 = null;
    }
    else {
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
      if (initObj.hasOwnProperty('id3')) {
        this.id3 = initObj.id3
      }
      else {
        this.id3 = 0;
      }
      if (initObj.hasOwnProperty('id4')) {
        this.id4 = initObj.id4
      }
      else {
        this.id4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BerryGetPositionRequest
    // Serialize message field [id1]
    bufferOffset = _serializer.uint8(obj.id1, buffer, bufferOffset);
    // Serialize message field [id2]
    bufferOffset = _serializer.uint8(obj.id2, buffer, bufferOffset);
    // Serialize message field [id3]
    bufferOffset = _serializer.uint8(obj.id3, buffer, bufferOffset);
    // Serialize message field [id4]
    bufferOffset = _serializer.uint8(obj.id4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BerryGetPositionRequest
    let len;
    let data = new BerryGetPositionRequest(null);
    // Deserialize message field [id1]
    data.id1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [id2]
    data.id2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [id3]
    data.id3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [id4]
    data.id4 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'berry_pkg/BerryGetPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52e083e3b957566af167934660d2a43f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id1
    uint8 id2
    uint8 id3
    uint8 id4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BerryGetPositionRequest(null);
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

    if (msg.id3 !== undefined) {
      resolved.id3 = msg.id3;
    }
    else {
      resolved.id3 = 0
    }

    if (msg.id4 !== undefined) {
      resolved.id4 = msg.id4;
    }
    else {
      resolved.id4 = 0
    }

    return resolved;
    }
};

class BerryGetPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position1 = null;
      this.position2 = null;
      this.position3 = null;
      this.position4 = null;
    }
    else {
      if (initObj.hasOwnProperty('position1')) {
        this.position1 = initObj.position1
      }
      else {
        this.position1 = 0;
      }
      if (initObj.hasOwnProperty('position2')) {
        this.position2 = initObj.position2
      }
      else {
        this.position2 = 0;
      }
      if (initObj.hasOwnProperty('position3')) {
        this.position3 = initObj.position3
      }
      else {
        this.position3 = 0;
      }
      if (initObj.hasOwnProperty('position4')) {
        this.position4 = initObj.position4
      }
      else {
        this.position4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BerryGetPositionResponse
    // Serialize message field [position1]
    bufferOffset = _serializer.int32(obj.position1, buffer, bufferOffset);
    // Serialize message field [position2]
    bufferOffset = _serializer.int32(obj.position2, buffer, bufferOffset);
    // Serialize message field [position3]
    bufferOffset = _serializer.int32(obj.position3, buffer, bufferOffset);
    // Serialize message field [position4]
    bufferOffset = _serializer.int32(obj.position4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BerryGetPositionResponse
    let len;
    let data = new BerryGetPositionResponse(null);
    // Deserialize message field [position1]
    data.position1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position2]
    data.position2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position3]
    data.position3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position4]
    data.position4 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'berry_pkg/BerryGetPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a81f06afdb51e739ccc838b6604a038';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 position1
    int32 position2
    int32 position3
    int32 position4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BerryGetPositionResponse(null);
    if (msg.position1 !== undefined) {
      resolved.position1 = msg.position1;
    }
    else {
      resolved.position1 = 0
    }

    if (msg.position2 !== undefined) {
      resolved.position2 = msg.position2;
    }
    else {
      resolved.position2 = 0
    }

    if (msg.position3 !== undefined) {
      resolved.position3 = msg.position3;
    }
    else {
      resolved.position3 = 0
    }

    if (msg.position4 !== undefined) {
      resolved.position4 = msg.position4;
    }
    else {
      resolved.position4 = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: BerryGetPositionRequest,
  Response: BerryGetPositionResponse,
  md5sum() { return 'b38e30458a843d420744e165c938e395'; },
  datatype() { return 'berry_pkg/BerryGetPosition'; }
};
