; Auto-generated. Do not edit!


(cl:in-package base_drive_chain-msg)


;//! \htmlinclude ControllerData.msg.html

(cl:defclass <ControllerData> (roslisp-msg-protocol:ros-message)
  ((controller_config
    :reader controller_config
    :initarg :controller_config
    :type base_drive_chain-msg:ControllerConfig
    :initform (cl:make-instance 'base_drive_chain-msg:ControllerConfig))
   (controller_state
    :reader controller_state
    :initarg :controller_state
    :type base_drive_chain-msg:ControllerState
    :initform (cl:make-instance 'base_drive_chain-msg:ControllerState))
   (propulsion_state
    :reader propulsion_state
    :initarg :propulsion_state
    :type base_drive_chain-msg:MotorState
    :initform (cl:make-instance 'base_drive_chain-msg:MotorState))
   (steering_state
    :reader steering_state
    :initarg :steering_state
    :type base_drive_chain-msg:MotorState
    :initform (cl:make-instance 'base_drive_chain-msg:MotorState)))
)

(cl:defclass ControllerData (<ControllerData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-msg:<ControllerData> is deprecated: use base_drive_chain-msg:ControllerData instead.")))

(cl:ensure-generic-function 'controller_config-val :lambda-list '(m))
(cl:defmethod controller_config-val ((m <ControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:controller_config-val is deprecated.  Use base_drive_chain-msg:controller_config instead.")
  (controller_config m))

(cl:ensure-generic-function 'controller_state-val :lambda-list '(m))
(cl:defmethod controller_state-val ((m <ControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:controller_state-val is deprecated.  Use base_drive_chain-msg:controller_state instead.")
  (controller_state m))

(cl:ensure-generic-function 'propulsion_state-val :lambda-list '(m))
(cl:defmethod propulsion_state-val ((m <ControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:propulsion_state-val is deprecated.  Use base_drive_chain-msg:propulsion_state instead.")
  (propulsion_state m))

(cl:ensure-generic-function 'steering_state-val :lambda-list '(m))
(cl:defmethod steering_state-val ((m <ControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:steering_state-val is deprecated.  Use base_drive_chain-msg:steering_state instead.")
  (steering_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerData>) ostream)
  "Serializes a message object of type '<ControllerData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'controller_config) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'controller_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'propulsion_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerData>) istream)
  "Deserializes a message object of type '<ControllerData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'controller_config) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'controller_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'propulsion_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerData>)))
  "Returns string type for a message object of type '<ControllerData>"
  "base_drive_chain/ControllerData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerData)))
  "Returns string type for a message object of type 'ControllerData"
  "base_drive_chain/ControllerData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerData>)))
  "Returns md5sum for a message object of type '<ControllerData>"
  "3c35784ec8577aa62e884e136ae154dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerData)))
  "Returns md5sum for a message object of type 'ControllerData"
  "3c35784ec8577aa62e884e136ae154dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerData>)))
  "Returns full string definition for message of type '<ControllerData>"
  (cl:format cl:nil "ControllerConfig controller_config~%ControllerState controller_state~%MotorState propulsion_state~%MotorState steering_state~%~%~%================================================================================~%MSG: base_drive_chain/ControllerConfig~%int16 can_id~%int8 drive_direction~%int16 home_speed~%int32 home_count~%~%================================================================================~%MSG: base_drive_chain/ControllerState~%int8 controller_mode~%float32 battery_volts~%float32 battery_amps~%int16 max_temp~%bool[] status_flags~%~%================================================================================~%MSG: base_drive_chain/MotorState~%int16 speed~%int32 position~%float32 motor_amps~%int16 relative_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerData)))
  "Returns full string definition for message of type 'ControllerData"
  (cl:format cl:nil "ControllerConfig controller_config~%ControllerState controller_state~%MotorState propulsion_state~%MotorState steering_state~%~%~%================================================================================~%MSG: base_drive_chain/ControllerConfig~%int16 can_id~%int8 drive_direction~%int16 home_speed~%int32 home_count~%~%================================================================================~%MSG: base_drive_chain/ControllerState~%int8 controller_mode~%float32 battery_volts~%float32 battery_amps~%int16 max_temp~%bool[] status_flags~%~%================================================================================~%MSG: base_drive_chain/MotorState~%int16 speed~%int32 position~%float32 motor_amps~%int16 relative_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'controller_config))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'controller_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'propulsion_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerData>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerData
    (cl:cons ':controller_config (controller_config msg))
    (cl:cons ':controller_state (controller_state msg))
    (cl:cons ':propulsion_state (propulsion_state msg))
    (cl:cons ':steering_state (steering_state msg))
))
