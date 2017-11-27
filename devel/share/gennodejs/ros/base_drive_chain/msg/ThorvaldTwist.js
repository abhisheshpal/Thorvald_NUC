// Auto-generated. Do not edit!

// (in-package base_drive_chain.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ThorvaldTwist {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drive_mode = null;
      this.twist = null;
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
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.TwistWithCovarianceStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThorvaldTwist
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drive_mode]
    bufferOffset = _serializer.int16(obj.drive_mode, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.TwistWithCovarianceStamped.serialize(obj.twist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThorvaldTwist
    let len;
    let data = new ThorvaldTwist(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drive_mode]
    data.drive_mode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.TwistWithCovarianceStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += geometry_msgs.msg.TwistWithCovarianceStamped.getMessageSize(object.twist);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'base_drive_chain/ThorvaldTwist';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e18834f49546c94039f55b092de9d1a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int16 drive_mode
    geometry_msgs/TwistWithCovarianceStamped twist
    
    
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
    MSG: geometry_msgs/TwistWithCovarianceStamped
    # This represents an estimated twist with reference coordinate frame and timestamp.
    Header header
    TwistWithCovariance twist
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThorvaldTwist(null);
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

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.TwistWithCovarianceStamped.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.TwistWithCovarianceStamped()
    }

    return resolved;
    }
};

module.exports = ThorvaldTwist;
