// Auto-generated. Do not edit!

// (in-package base_drive_chain.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MotorControllerSetupRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can_id = null;
      this.setup_id = null;
      this.setup_value = null;
    }
    else {
      if (initObj.hasOwnProperty('can_id')) {
        this.can_id = initObj.can_id
      }
      else {
        this.can_id = 0;
      }
      if (initObj.hasOwnProperty('setup_id')) {
        this.setup_id = initObj.setup_id
      }
      else {
        this.setup_id = 0;
      }
      if (initObj.hasOwnProperty('setup_value')) {
        this.setup_value = initObj.setup_value
      }
      else {
        this.setup_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorControllerSetupRequest
    // Serialize message field [can_id]
    bufferOffset = _serializer.int32(obj.can_id, buffer, bufferOffset);
    // Serialize message field [setup_id]
    bufferOffset = _serializer.int32(obj.setup_id, buffer, bufferOffset);
    // Serialize message field [setup_value]
    bufferOffset = _serializer.int32(obj.setup_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorControllerSetupRequest
    let len;
    let data = new MotorControllerSetupRequest(null);
    // Deserialize message field [can_id]
    data.can_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [setup_id]
    data.setup_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [setup_value]
    data.setup_value = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'base_drive_chain/MotorControllerSetupRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfaf3ea59d6ff6b4547617a713b1cba6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 can_id
    int32 setup_id
    int32 setup_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorControllerSetupRequest(null);
    if (msg.can_id !== undefined) {
      resolved.can_id = msg.can_id;
    }
    else {
      resolved.can_id = 0
    }

    if (msg.setup_id !== undefined) {
      resolved.setup_id = msg.setup_id;
    }
    else {
      resolved.setup_id = 0
    }

    if (msg.setup_value !== undefined) {
      resolved.setup_value = msg.setup_value;
    }
    else {
      resolved.setup_value = 0
    }

    return resolved;
    }
};

class MotorControllerSetupResponse {
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
    // Serializes a message object of type MotorControllerSetupResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorControllerSetupResponse
    let len;
    let data = new MotorControllerSetupResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'base_drive_chain/MotorControllerSetupResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b29eeb7ae5a783e5ecf3db203eefa186';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    int32 status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorControllerSetupResponse(null);
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
  Request: MotorControllerSetupRequest,
  Response: MotorControllerSetupResponse,
  md5sum() { return '24c0c7fdc8d1bb416db60b20cb2324c6'; },
  datatype() { return 'base_drive_chain/MotorControllerSetup'; }
};
