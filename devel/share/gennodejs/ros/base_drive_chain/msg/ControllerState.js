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

class ControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controller_mode = null;
      this.battery_volts = null;
      this.battery_amps = null;
      this.max_temp = null;
      this.status_flags = null;
    }
    else {
      if (initObj.hasOwnProperty('controller_mode')) {
        this.controller_mode = initObj.controller_mode
      }
      else {
        this.controller_mode = 0;
      }
      if (initObj.hasOwnProperty('battery_volts')) {
        this.battery_volts = initObj.battery_volts
      }
      else {
        this.battery_volts = 0.0;
      }
      if (initObj.hasOwnProperty('battery_amps')) {
        this.battery_amps = initObj.battery_amps
      }
      else {
        this.battery_amps = 0.0;
      }
      if (initObj.hasOwnProperty('max_temp')) {
        this.max_temp = initObj.max_temp
      }
      else {
        this.max_temp = 0;
      }
      if (initObj.hasOwnProperty('status_flags')) {
        this.status_flags = initObj.status_flags
      }
      else {
        this.status_flags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerState
    // Serialize message field [controller_mode]
    bufferOffset = _serializer.int8(obj.controller_mode, buffer, bufferOffset);
    // Serialize message field [battery_volts]
    bufferOffset = _serializer.float32(obj.battery_volts, buffer, bufferOffset);
    // Serialize message field [battery_amps]
    bufferOffset = _serializer.float32(obj.battery_amps, buffer, bufferOffset);
    // Serialize message field [max_temp]
    bufferOffset = _serializer.int16(obj.max_temp, buffer, bufferOffset);
    // Serialize message field [status_flags]
    bufferOffset = _arraySerializer.bool(obj.status_flags, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerState
    let len;
    let data = new ControllerState(null);
    // Deserialize message field [controller_mode]
    data.controller_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [battery_volts]
    data.battery_volts = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_amps]
    data.battery_amps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_temp]
    data.max_temp = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [status_flags]
    data.status_flags = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status_flags.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'base_drive_chain/ControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cc274a1867f3f7db3f1191e8caf70dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 controller_mode
    float32 battery_volts
    float32 battery_amps
    int16 max_temp
    bool[] status_flags
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerState(null);
    if (msg.controller_mode !== undefined) {
      resolved.controller_mode = msg.controller_mode;
    }
    else {
      resolved.controller_mode = 0
    }

    if (msg.battery_volts !== undefined) {
      resolved.battery_volts = msg.battery_volts;
    }
    else {
      resolved.battery_volts = 0.0
    }

    if (msg.battery_amps !== undefined) {
      resolved.battery_amps = msg.battery_amps;
    }
    else {
      resolved.battery_amps = 0.0
    }

    if (msg.max_temp !== undefined) {
      resolved.max_temp = msg.max_temp;
    }
    else {
      resolved.max_temp = 0
    }

    if (msg.status_flags !== undefined) {
      resolved.status_flags = msg.status_flags;
    }
    else {
      resolved.status_flags = []
    }

    return resolved;
    }
};

module.exports = ControllerState;
