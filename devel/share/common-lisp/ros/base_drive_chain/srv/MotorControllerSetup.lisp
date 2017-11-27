; Auto-generated. Do not edit!


(cl:in-package base_drive_chain-srv)


;//! \htmlinclude MotorControllerSetup-request.msg.html

(cl:defclass <MotorControllerSetup-request> (roslisp-msg-protocol:ros-message)
  ((can_id
    :reader can_id
    :initarg :can_id
    :type cl:integer
    :initform 0)
   (setup_id
    :reader setup_id
    :initarg :setup_id
    :type cl:integer
    :initform 0)
   (setup_value
    :reader setup_value
    :initarg :setup_value
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorControllerSetup-request (<MotorControllerSetup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorControllerSetup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorControllerSetup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-srv:<MotorControllerSetup-request> is deprecated: use base_drive_chain-srv:MotorControllerSetup-request instead.")))

(cl:ensure-generic-function 'can_id-val :lambda-list '(m))
(cl:defmethod can_id-val ((m <MotorControllerSetup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-srv:can_id-val is deprecated.  Use base_drive_chain-srv:can_id instead.")
  (can_id m))

(cl:ensure-generic-function 'setup_id-val :lambda-list '(m))
(cl:defmethod setup_id-val ((m <MotorControllerSetup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-srv:setup_id-val is deprecated.  Use base_drive_chain-srv:setup_id instead.")
  (setup_id m))

(cl:ensure-generic-function 'setup_value-val :lambda-list '(m))
(cl:defmethod setup_value-val ((m <MotorControllerSetup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-srv:setup_value-val is deprecated.  Use base_drive_chain-srv:setup_value instead.")
  (setup_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorControllerSetup-request>) ostream)
  "Serializes a message object of type '<MotorControllerSetup-request>"
  (cl:let* ((signed (cl:slot-value msg 'can_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'setup_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'setup_value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorControllerSetup-request>) istream)
  "Deserializes a message object of type '<MotorControllerSetup-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'can_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setup_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setup_value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorControllerSetup-request>)))
  "Returns string type for a service object of type '<MotorControllerSetup-request>"
  "base_drive_chain/MotorControllerSetupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorControllerSetup-request)))
  "Returns string type for a service object of type 'MotorControllerSetup-request"
  "base_drive_chain/MotorControllerSetupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorControllerSetup-request>)))
  "Returns md5sum for a message object of type '<MotorControllerSetup-request>"
  "24c0c7fdc8d1bb416db60b20cb2324c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorControllerSetup-request)))
  "Returns md5sum for a message object of type 'MotorControllerSetup-request"
  "24c0c7fdc8d1bb416db60b20cb2324c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorControllerSetup-request>)))
  "Returns full string definition for message of type '<MotorControllerSetup-request>"
  (cl:format cl:nil "int32 can_id~%int32 setup_id~%int32 setup_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorControllerSetup-request)))
  "Returns full string definition for message of type 'MotorControllerSetup-request"
  (cl:format cl:nil "int32 can_id~%int32 setup_id~%int32 setup_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorControllerSetup-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorControllerSetup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorControllerSetup-request
    (cl:cons ':can_id (can_id msg))
    (cl:cons ':setup_id (setup_id msg))
    (cl:cons ':setup_value (setup_value msg))
))
;//! \htmlinclude MotorControllerSetup-response.msg.html

(cl:defclass <MotorControllerSetup-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorControllerSetup-response (<MotorControllerSetup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorControllerSetup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorControllerSetup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-srv:<MotorControllerSetup-response> is deprecated: use base_drive_chain-srv:MotorControllerSetup-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MotorControllerSetup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-srv:message-val is deprecated.  Use base_drive_chain-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MotorControllerSetup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-srv:status-val is deprecated.  Use base_drive_chain-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorControllerSetup-response>) ostream)
  "Serializes a message object of type '<MotorControllerSetup-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorControllerSetup-response>) istream)
  "Deserializes a message object of type '<MotorControllerSetup-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorControllerSetup-response>)))
  "Returns string type for a service object of type '<MotorControllerSetup-response>"
  "base_drive_chain/MotorControllerSetupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorControllerSetup-response)))
  "Returns string type for a service object of type 'MotorControllerSetup-response"
  "base_drive_chain/MotorControllerSetupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorControllerSetup-response>)))
  "Returns md5sum for a message object of type '<MotorControllerSetup-response>"
  "24c0c7fdc8d1bb416db60b20cb2324c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorControllerSetup-response)))
  "Returns md5sum for a message object of type 'MotorControllerSetup-response"
  "24c0c7fdc8d1bb416db60b20cb2324c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorControllerSetup-response>)))
  "Returns full string definition for message of type '<MotorControllerSetup-response>"
  (cl:format cl:nil "string message~%int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorControllerSetup-response)))
  "Returns full string definition for message of type 'MotorControllerSetup-response"
  (cl:format cl:nil "string message~%int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorControllerSetup-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorControllerSetup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorControllerSetup-response
    (cl:cons ':message (message msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MotorControllerSetup)))
  'MotorControllerSetup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MotorControllerSetup)))
  'MotorControllerSetup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorControllerSetup)))
  "Returns string type for a service object of type '<MotorControllerSetup>"
  "base_drive_chain/MotorControllerSetup")