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

class ControllerInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drive_directions = null;
      this.home_counts = null;
    }
    else {
      if (initObj.hasOwnProperty('drive_directions')) {
        this.drive_directions = initObj.drive_directions
      }
      else {
        this.drive_directions = [];
      }
      if (initObj.hasOwnProperty('home_counts')) {
        this.home_counts = initObj.home_counts
      }
      else {
        this.home_counts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerInfo
    // Serialize message field [drive_directions]
    bufferOffset = _arraySerializer.int16(obj.drive_directions, buffer, bufferOffset, null);
    // Serialize message field [home_counts]
    bufferOffset = _arraySerializer.int32(obj.home_counts, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerInfo
    let len;
    let data = new ControllerInfo(null);
    // Deserialize message field [drive_directions]
    data.drive_directions = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [home_counts]
    data.home_counts = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.drive_directions.length;
    length += 4 * object.home_counts.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'base_drive_chain/ControllerInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2b2ee8fe293fac17d5e53963eed123c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[] drive_directions
    int32[] home_counts
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerInfo(null);
    if (msg.drive_directions !== undefined) {
      resolved.drive_directions = msg.drive_directions;
    }
    else {
      resolved.drive_directions = []
    }

    if (msg.home_counts !== undefined) {
      resolved.home_counts = msg.home_counts;
    }
    else {
      resolved.home_counts = []
    }

    return resolved;
    }
};

module.exports = ControllerInfo;
