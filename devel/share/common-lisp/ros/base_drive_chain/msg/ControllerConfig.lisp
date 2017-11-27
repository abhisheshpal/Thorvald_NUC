; Auto-generated. Do not edit!


(cl:in-package base_drive_chain-msg)


;//! \htmlinclude ControllerConfig.msg.html

(cl:defclass <ControllerConfig> (roslisp-msg-protocol:ros-message)
  ((can_id
    :reader can_id
    :initarg :can_id
    :type cl:fixnum
    :initform 0)
   (drive_direction
    :reader drive_direction
    :initarg :drive_direction
    :type cl:fixnum
    :initform 0)
   (home_speed
    :reader home_speed
    :initarg :home_speed
    :type cl:fixnum
    :initform 0)
   (home_count
    :reader home_count
    :initarg :home_count
    :type cl:integer
    :initform 0))
)

(cl:defclass ControllerConfig (<ControllerConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-msg:<ControllerConfig> is deprecated: use base_drive_chain-msg:ControllerConfig instead.")))

(cl:ensure-generic-function 'can_id-val :lambda-list '(m))
(cl:defmethod can_id-val ((m <ControllerConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:can_id-val is deprecated.  Use base_drive_chain-msg:can_id instead.")
  (can_id m))

(cl:ensure-generic-function 'drive_direction-val :lambda-list '(m))
(cl:defmethod drive_direction-val ((m <ControllerConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:drive_direction-val is deprecated.  Use base_drive_chain-msg:drive_direction instead.")
  (drive_direction m))

(cl:ensure-generic-function 'home_speed-val :lambda-list '(m))
(cl:defmethod home_speed-val ((m <ControllerConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:home_speed-val is deprecated.  Use base_drive_chain-msg:home_speed instead.")
  (home_speed m))

(cl:ensure-generic-function 'home_count-val :lambda-list '(m))
(cl:defmethod home_count-val ((m <ControllerConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:home_count-val is deprecated.  Use base_drive_chain-msg:home_count instead.")
  (home_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerConfig>) ostream)
  "Serializes a message object of type '<ControllerConfig>"
  (cl:let* ((signed (cl:slot-value msg 'can_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'drive_direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'home_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'home_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerConfig>) istream)
  "Deserializes a message object of type '<ControllerConfig>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'can_id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drive_direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'home_speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'home_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerConfig>)))
  "Returns string type for a message object of type '<ControllerConfig>"
  "base_drive_chain/ControllerConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerConfig)))
  "Returns string type for a message object of type 'ControllerConfig"
  "base_drive_chain/ControllerConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerConfig>)))
  "Returns md5sum for a message object of type '<ControllerConfig>"
  "25f378ae64e2242b15491b758193668c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerConfig)))
  "Returns md5sum for a message object of type 'ControllerConfig"
  "25f378ae64e2242b15491b758193668c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerConfig>)))
  "Returns full string definition for message of type '<ControllerConfig>"
  (cl:format cl:nil "int16 can_id~%int8 drive_direction~%int16 home_speed~%int32 home_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerConfig)))
  "Returns full string definition for message of type 'ControllerConfig"
  (cl:format cl:nil "int16 can_id~%int8 drive_direction~%int16 home_speed~%int32 home_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerConfig>))
  (cl:+ 0
     2
     1
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerConfig
    (cl:cons ':can_id (can_id msg))
    (cl:cons ':drive_direction (drive_direction msg))
    (cl:cons ':home_speed (home_speed msg))
    (cl:cons ':home_count (home_count msg))
))
