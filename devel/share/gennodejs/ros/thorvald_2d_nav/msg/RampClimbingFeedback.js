// Auto-generated. Do not edit!

// (in-package thorvald_2d_nav.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RampClimbingFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dummy2 = null;
    }
    else {
      if (initObj.hasOwnProperty('dummy2')) {
        this.dummy2 = initObj.dummy2
      }
      else {
        this.dummy2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RampClimbingFeedback
    // Serialize message field [dummy2]
    bufferOffset = _serializer.int64(obj.dummy2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RampClimbingFeedback
    let len;
    let data = new RampClimbingFeedback(null);
    // Deserialize message field [dummy2]
    data.dummy2 = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'thorvald_2d_nav/RampClimbingFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3243b8b6f6a847459b6c91de09c479a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    int64 dummy2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RampClimbingFeedback(null);
    if (msg.dummy2 !== undefined) {
      resolved.dummy2 = msg.dummy2;
    }
    else {
      resolved.dummy2 = 0
    }

    return resolved;
    }
};

module.exports = RampClimbingFeedback;
