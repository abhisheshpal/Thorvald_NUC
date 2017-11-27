; Auto-generated. Do not edit!


(cl:in-package base_drive_chain-msg)


;//! \htmlinclude ControllerArray.msg.html

(cl:defclass <ControllerArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (controller_data
    :reader controller_data
    :initarg :controller_data
    :type (cl:vector base_drive_chain-msg:ControllerData)
   :initform (cl:make-array 0 :element-type 'base_drive_chain-msg:ControllerData :initial-element (cl:make-instance 'base_drive_chain-msg:ControllerData))))
)

(cl:defclass ControllerArray (<ControllerArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-msg:<ControllerArray> is deprecated: use base_drive_chain-msg:ControllerArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControllerArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:header-val is deprecated.  Use base_drive_chain-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'controller_data-val :lambda-list '(m))
(cl:defmethod controller_data-val ((m <ControllerArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:controller_data-val is deprecated.  Use base_drive_chain-msg:controller_data instead.")
  (controller_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerArray>) ostream)
  "Serializes a message object of type '<ControllerArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controller_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controller_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerArray>) istream)
  "Deserializes a message object of type '<ControllerArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controller_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controller_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'base_drive_chain-msg:ControllerData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerArray>)))
  "Returns string type for a message object of type '<ControllerArray>"
  "base_drive_chain/ControllerArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerArray)))
  "Returns string type for a message object of type 'ControllerArray"
  "base_drive_chain/ControllerArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerArray>)))
  "Returns md5sum for a message object of type '<ControllerArray>"
  "bd69d6925463f483a09ba76d83f3c179")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerArray)))
  "Returns md5sum for a message object of type 'ControllerArray"
  "bd69d6925463f483a09ba76d83f3c179")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerArray>)))
  "Returns full string definition for message of type '<ControllerArray>"
  (cl:format cl:nil "Header header~%ControllerData[] controller_data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: base_drive_chain/ControllerData~%ControllerConfig controller_config~%ControllerState controller_state~%MotorState propulsion_state~%MotorState steering_state~%~%~%================================================================================~%MSG: base_drive_chain/ControllerConfig~%int16 can_id~%int8 drive_direction~%int16 home_speed~%int32 home_count~%~%================================================================================~%MSG: base_drive_chain/ControllerState~%int8 controller_mode~%float32 battery_volts~%float32 battery_amps~%int16 max_temp~%bool[] status_flags~%~%================================================================================~%MSG: base_drive_chain/MotorState~%int16 speed~%int32 position~%float32 motor_amps~%int16 relative_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerArray)))
  "Returns full string definition for message of type 'ControllerArray"
  (cl:format cl:nil "Header header~%ControllerData[] controller_data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: base_drive_chain/ControllerData~%ControllerConfig controller_config~%ControllerState controller_state~%MotorState propulsion_state~%MotorState steering_state~%~%~%================================================================================~%MSG: base_drive_chain/ControllerConfig~%int16 can_id~%int8 drive_direction~%int16 home_speed~%int32 home_count~%~%================================================================================~%MSG: base_drive_chain/ControllerState~%int8 controller_mode~%float32 battery_volts~%float32 battery_amps~%int16 max_temp~%bool[] status_flags~%~%================================================================================~%MSG: base_drive_chain/MotorState~%int16 speed~%int32 position~%float32 motor_amps~%int16 relative_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controller_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerArray
    (cl:cons ':header (header msg))
    (cl:cons ':controller_data (controller_data msg))
))
