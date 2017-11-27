; Auto-generated. Do not edit!


(cl:in-package base_drive_chain-msg)


;//! \htmlinclude ControllerState.msg.html

(cl:defclass <ControllerState> (roslisp-msg-protocol:ros-message)
  ((controller_mode
    :reader controller_mode
    :initarg :controller_mode
    :type cl:fixnum
    :initform 0)
   (battery_volts
    :reader battery_volts
    :initarg :battery_volts
    :type cl:float
    :initform 0.0)
   (battery_amps
    :reader battery_amps
    :initarg :battery_amps
    :type cl:float
    :initform 0.0)
   (max_temp
    :reader max_temp
    :initarg :max_temp
    :type cl:fixnum
    :initform 0)
   (status_flags
    :reader status_flags
    :initarg :status_flags
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass ControllerState (<ControllerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-msg:<ControllerState> is deprecated: use base_drive_chain-msg:ControllerState instead.")))

(cl:ensure-generic-function 'controller_mode-val :lambda-list '(m))
(cl:defmethod controller_mode-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:controller_mode-val is deprecated.  Use base_drive_chain-msg:controller_mode instead.")
  (controller_mode m))

(cl:ensure-generic-function 'battery_volts-val :lambda-list '(m))
(cl:defmethod battery_volts-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:battery_volts-val is deprecated.  Use base_drive_chain-msg:battery_volts instead.")
  (battery_volts m))

(cl:ensure-generic-function 'battery_amps-val :lambda-list '(m))
(cl:defmethod battery_amps-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:battery_amps-val is deprecated.  Use base_drive_chain-msg:battery_amps instead.")
  (battery_amps m))

(cl:ensure-generic-function 'max_temp-val :lambda-list '(m))
(cl:defmethod max_temp-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:max_temp-val is deprecated.  Use base_drive_chain-msg:max_temp instead.")
  (max_temp m))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:status_flags-val is deprecated.  Use base_drive_chain-msg:status_flags instead.")
  (status_flags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerState>) ostream)
  "Serializes a message object of type '<ControllerState>"
  (cl:let* ((signed (cl:slot-value msg 'controller_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_volts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_amps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'max_temp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status_flags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'status_flags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerState>) istream)
  "Deserializes a message object of type '<ControllerState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controller_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_volts) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_amps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_temp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status_flags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status_flags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerState>)))
  "Returns string type for a message object of type '<ControllerState>"
  "base_drive_chain/ControllerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerState)))
  "Returns string type for a message object of type 'ControllerState"
  "base_drive_chain/ControllerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerState>)))
  "Returns md5sum for a message object of type '<ControllerState>"
  "6cc274a1867f3f7db3f1191e8caf70dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerState)))
  "Returns md5sum for a message object of type 'ControllerState"
  "6cc274a1867f3f7db3f1191e8caf70dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerState>)))
  "Returns full string definition for message of type '<ControllerState>"
  (cl:format cl:nil "int8 controller_mode~%float32 battery_volts~%float32 battery_amps~%int16 max_temp~%bool[] status_flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerState)))
  "Returns full string definition for message of type 'ControllerState"
  (cl:format cl:nil "int8 controller_mode~%float32 battery_volts~%float32 battery_amps~%int16 max_temp~%bool[] status_flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerState>))
  (cl:+ 0
     1
     4
     4
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status_flags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerState>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerState
    (cl:cons ':controller_mode (controller_mode msg))
    (cl:cons ':battery_volts (battery_volts msg))
    (cl:cons ':battery_amps (battery_amps msg))
    (cl:cons ':max_temp (max_temp msg))
    (cl:cons ':status_flags (status_flags msg))
))
