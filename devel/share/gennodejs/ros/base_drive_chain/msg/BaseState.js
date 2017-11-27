// Auto-generated. Do not edit!

// (in-package base_drive_chain.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BaseState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drive_mode = null;
      this.vel = null;
      this.position = null;
      this.pos_max_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drive_mode')) {
        this.drive_mode = initObj.drive_mode
      }
      else {
        this.drive_mode = 0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('pos_max_vel')) {
        this.pos_max_vel = initObj.pos_max_vel
      }
      else {
        this.pos_max_vel = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaseState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drive_mode]
    bufferOffset = _serializer.int16(obj.drive_mode, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _arraySerializer.int16(obj.vel, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.int32(obj.position, buffer, bufferOffset, null);
    // Serialize message field [pos_max_vel]
    bufferOffset = _arraySerializer.int32(obj.pos_max_vel, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseState
    let len;
    let data = new BaseState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drive_mode]
    data.drive_mode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pos_max_vel]
    data.pos_max_vel = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.vel.length;
    length += 4 * object.position.length;
    length += 4 * object.pos_max_vel.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'base_drive_chain/BaseState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63318a0806bc66c83a396c532d46cb86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int16 drive_mode
    int16[] vel
    int32[] position
    int32[] pos_max_vel
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BaseState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drive_mode !== undefined) {
      resolved.drive_mode = msg.drive_mode;
    }
    else {
      resolved.drive_mode = 0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.pos_max_vel !== undefined) {
      resolved.pos_max_vel = msg.pos_max_vel;
    }
    else {
      resolved.pos_max_vel = []
    }

    return resolved;
    }
};

module.exports = BaseState;
