// Auto-generated. Do not edit!

// (in-package base_drive_chain.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControllerConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can_id = null;
      this.drive_direction = null;
      this.home_speed = null;
      this.home_count = null;
    }
    else {
      if (initObj.hasOwnProperty('can_id')) {
        this.can_id = initObj.can_id
      }
      else {
        this.can_id = 0;
      }
      if (initObj.hasOwnProperty('drive_direction')) {
        this.drive_direction = initObj.drive_direction
      }
      else {
        this.drive_direction = 0;
      }
      if (initObj.hasOwnProperty('home_speed')) {
        this.home_speed = initObj.home_speed
      }
      else {
        this.home_speed = 0;
      }
      if (initObj.hasOwnProperty('home_count')) {
        this.home_count = initObj.home_count
      }
      else {
        this.home_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerConfig
    // Serialize message field [can_id]
    bufferOffset = _serializer.int16(obj.can_id, buffer, bufferOffset);
    // Serialize message field [drive_direction]
    bufferOffset = _serializer.int8(obj.drive_direction, buffer, bufferOffset);
    // Serialize message field [home_speed]
    bufferOffset = _serializer.int16(obj.home_speed, buffer, bufferOffset);
    // Serialize message field [home_count]
    bufferOffset = _serializer.int32(obj.home_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerConfig
    let len;
    let data = new ControllerConfig(null);
    // Deserialize message field [can_id]
    data.can_id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [drive_direction]
    data.drive_direction = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [home_speed]
    data.home_speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [home_count]
    data.home_count = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'base_drive_chain/ControllerConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25f378ae64e2242b15491b758193668c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 can_id
    int8 drive_direction
    int16 home_speed
    int32 home_count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerConfig(null);
    if (msg.can_id !== undefined) {
      resolved.can_id = msg.can_id;
    }
    else {
      resolved.can_id = 0
    }

    if (msg.drive_direction !== undefined) {
      resolved.drive_direction = msg.drive_direction;
    }
    else {
      resolved.drive_direction = 0
    }

    if (msg.home_speed !== undefined) {
      resolved.home_speed = msg.home_speed;
    }
    else {
      resolved.home_speed = 0
    }

    if (msg.home_count !== undefined) {
      resolved.home_count = msg.home_count;
    }
    else {
      resolved.home_count = 0
    }

    return resolved;
    }
};

module.exports = ControllerConfig;
