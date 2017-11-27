// Auto-generated. Do not edit!

// (in-package base_drive_chain.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControllerData = require('./ControllerData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControllerArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.controller_data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('controller_data')) {
        this.controller_data = initObj.controller_data
      }
      else {
        this.controller_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [controller_data]
    // Serialize the length for message field [controller_data]
    bufferOffset = _serializer.uint32(obj.controller_data.length, buffer, bufferOffset);
    obj.controller_data.forEach((val) => {
      bufferOffset = ControllerData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerArray
    let len;
    let data = new ControllerArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [controller_data]
    // Deserialize array length for message field [controller_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.controller_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.controller_data[i] = ControllerData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.controller_data.forEach((val) => {
      length += ControllerData.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'base_drive_chain/ControllerArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd69d6925463f483a09ba76d83f3c179';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ControllerData[] controller_data
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: base_drive_chain/ControllerData
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
    const resolved = new ControllerArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.controller_data !== undefined) {
      resolved.controller_data = new Array(msg.controller_data.length);
      for (let i = 0; i < resolved.controller_data.length; ++i) {
        resolved.controller_data[i] = ControllerData.Resolve(msg.controller_data[i]);
      }
    }
    else {
      resolved.controller_data = []
    }

    return resolved;
    }
};

module.exports = ControllerArray;
