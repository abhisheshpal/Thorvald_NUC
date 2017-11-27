; Auto-generated. Do not edit!


(cl:in-package base_drive_chain-msg)


;//! \htmlinclude MotorState.msg.html

(cl:defclass <MotorState> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0)
   (motor_amps
    :reader motor_amps
    :initarg :motor_amps
    :type cl:float
    :initform 0.0)
   (relative_power
    :reader relative_power
    :initarg :relative_power
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MotorState (<MotorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-msg:<MotorState> is deprecated: use base_drive_chain-msg:MotorState instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:speed-val is deprecated.  Use base_drive_chain-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:position-val is deprecated.  Use base_drive_chain-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'motor_amps-val :lambda-list '(m))
(cl:defmethod motor_amps-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:motor_amps-val is deprecated.  Use base_drive_chain-msg:motor_amps instead.")
  (motor_amps m))

(cl:ensure-generic-function 'relative_power-val :lambda-list '(m))
(cl:defmethod relative_power-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:relative_power-val is deprecated.  Use base_drive_chain-msg:relative_power instead.")
  (relative_power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorState>) ostream)
  "Serializes a message object of type '<MotorState>"
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_amps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'relative_power)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorState>) istream)
  "Deserializes a message object of type '<MotorState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_amps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relative_power) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorState>)))
  "Returns string type for a message object of type '<MotorState>"
  "base_drive_chain/MotorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorState)))
  "Returns string type for a message object of type 'MotorState"
  "base_drive_chain/MotorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorState>)))
  "Returns md5sum for a message object of type '<MotorState>"
  "414d541cba772f96c0da7fb1c738c878")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorState)))
  "Returns md5sum for a message object of type 'MotorState"
  "414d541cba772f96c0da7fb1c738c878")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorState>)))
  "Returns full string definition for message of type '<MotorState>"
  (cl:format cl:nil "int16 speed~%int32 position~%float32 motor_amps~%int16 relative_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorState)))
  "Returns full string definition for message of type 'MotorState"
  (cl:format cl:nil "int16 speed~%int32 position~%float32 motor_amps~%int16 relative_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorState>))
  (cl:+ 0
     2
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorState>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorState
    (cl:cons ':speed (speed msg))
    (cl:cons ':position (position msg))
    (cl:cons ':motor_amps (motor_amps msg))
    (cl:cons ':relative_power (relative_power msg))
))
