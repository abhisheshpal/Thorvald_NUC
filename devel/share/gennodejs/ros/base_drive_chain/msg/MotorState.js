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

class MotorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.position = null;
      this.motor_amps = null;
      this.relative_power = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('motor_amps')) {
        this.motor_amps = initObj.motor_amps
      }
      else {
        this.motor_amps = 0.0;
      }
      if (initObj.hasOwnProperty('relative_power')) {
        this.relative_power = initObj.relative_power
      }
      else {
        this.relative_power = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorState
    // Serialize message field [speed]
    bufferOffset = _serializer.int16(obj.speed, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.int32(obj.position, buffer, bufferOffset);
    // Serialize message field [motor_amps]
    bufferOffset = _serializer.float32(obj.motor_amps, buffer, bufferOffset);
    // Serialize message field [relative_power]
    bufferOffset = _serializer.int16(obj.relative_power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorState
    let len;
    let data = new MotorState(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor_amps]
    data.motor_amps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_power]
    data.relative_power = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'base_drive_chain/MotorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '414d541cba772f96c0da7fb1c738c878';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 speed
    int32 position
    float32 motor_amps
    int16 relative_power
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorState(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.motor_amps !== undefined) {
      resolved.motor_amps = msg.motor_amps;
    }
    else {
      resolved.motor_amps = 0.0
    }

    if (msg.relative_power !== undefined) {
      resolved.relative_power = msg.relative_power;
    }
    else {
      resolved.relative_power = 0
    }

    return resolved;
    }
};

module.exports = MotorState;
