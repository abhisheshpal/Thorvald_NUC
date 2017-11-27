// Auto-generated. Do not edit!

// (in-package base_drive_chain.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControllerConfig = require('./ControllerConfig.js');
let ControllerState = require('./ControllerState.js');
let MotorState = require('./MotorState.js');

//-----------------------------------------------------------

class ControllerData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controller_config = null;
      this.controller_state = null;
      this.propulsion_state = null;
      this.steering_state = null;
    }
    else {
      if (initObj.hasOwnProperty('controller_config')) {
        this.controller_config = initObj.controller_config
      }
      else {
        this.controller_config = new ControllerConfig();
      }
      if (initObj.hasOwnProperty('controller_state')) {
        this.controller_state = initObj.controller_state
      }
      else {
        this.controller_state = new ControllerState();
      }
      if (initObj.hasOwnProperty('propulsion_state')) {
        this.propulsion_state = initObj.propulsion_state
      }
      else {
        this.propulsion_state = new MotorState();
      }
      if (initObj.hasOwnProperty('steering_state')) {
        this.steering_state = initObj.steering_state
      }
      else {
        this.steering_state = new MotorState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerData
    // Serialize message field [controller_config]
    bufferOffset = ControllerConfig.serialize(obj.controller_config, buffer, bufferOffset);
    // Serialize message field [controller_state]
    bufferOffset = ControllerState.serialize(obj.controller_state, buffer, bufferOffset);
    // Serialize message field [propulsion_state]
    bufferOffset = MotorState.serialize(obj.propulsion_state, buffer, bufferOffset);
    // Serialize message field [steering_state]
    bufferOffset = MotorState.serialize(obj.steering_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerData
    let len;
    let data = new ControllerData(null);
    // Deserialize message field [controller_config]
    data.controller_config = ControllerConfig.deserialize(buffer, bufferOffset);
    // Deserialize message field [controller_state]
    data.controller_state = ControllerState.deserialize(buffer, bufferOffset);
    // Deserialize message field [propulsion_state]
    data.propulsion_state = MotorState.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_state]
    data.steering_state = MotorState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ControllerState.getMessageSize(object.controller_state);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'base_drive_chain/ControllerData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c35784ec8577aa62e884e136ae154dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ControllerConfig controller_config
    ControllerState controller_state
    MotorState propulsion_state
    MotorState steering_state
    
    
    ================================================================================
    MSG: base_drive_chain/ControllerConfig
    int16 can_id
    int8 drive_direction
    int16 home_speed
    int32 home_count
    
    ================================================================================
    MSG: base_drive_chain/ControllerState
    int8 controller_mode
    float32 battery_volts
    float32 battery_amps
    int16 max_temp
    bool[] status_flags
    
    ================================================================================
    MSG: base_drive_chain/MotorState
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
    const resolved = new ControllerData(null);
    if (msg.controller_config !== undefined) {
      resolved.controller_config = ControllerConfig.Resolve(msg.controller_config)
    }
    else {
      resolved.controller_config = new ControllerConfig()
    }

    if (msg.controller_state !== undefined) {
      resolved.controller_state = ControllerState.Resolve(msg.controller_state)
    }
    else {
      resolved.controller_state = new ControllerState()
    }

    if (msg.propulsion_state !== undefined) {
      resolved.propulsion_state = MotorState.Resolve(msg.propulsion_state)
    }
    else {
      resolved.propulsion_state = new MotorState()
    }

    if (msg.steering_state !== undefined) {
      resolved.steering_state = MotorState.Resolve(msg.steering_state)
    }
    else {
      resolved.steering_state = new MotorState()
    }

    return resolved;
    }
};

module.exports = ControllerData;
