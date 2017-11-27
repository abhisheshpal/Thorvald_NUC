; Auto-generated. Do not edit!


(cl:in-package base_drive_chain-srv)


;//! \htmlinclude RoboteqMode-request.msg.html

(cl:defclass <RoboteqMode-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RoboteqMode-request (<RoboteqMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoboteqMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoboteqMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-srv:<RoboteqMode-request> is deprecated: use base_drive_chain-srv:RoboteqMode-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoboteqMode-request>) ostream)
  "Serializes a message object of type '<RoboteqMode-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoboteqMode-request>) istream)
  "Deserializes a message object of type '<RoboteqMode-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoboteqMode-request>)))
  "Returns string type for a service object of type '<RoboteqMode-request>"
  "base_drive_chain/RoboteqModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoboteqMode-request)))
  "Returns string type for a service object of type 'RoboteqMode-request"
  "base_drive_chain/RoboteqModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoboteqMode-request>)))
  "Returns md5sum for a message object of type '<RoboteqMode-request>"
  "4107476a6271fc2684d94be17d33f854")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoboteqMode-request)))
  "Returns md5sum for a message object of type 'RoboteqMode-request"
  "4107476a6271fc2684d94be17d33f854")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoboteqMode-request>)))
  "Returns full string definition for message of type '<RoboteqMode-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoboteqMode-request)))
  "Returns full string definition for message of type 'RoboteqMode-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoboteqMode-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoboteqMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RoboteqMode-request
))
;//! \htmlinclude RoboteqMode-response.msg.html

(cl:defclass <RoboteqMode-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass RoboteqMode-response (<RoboteqMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoboteqMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoboteqMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-srv:<RoboteqMode-response> is deprecated: use base_drive_chain-srv:RoboteqMode-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RoboteqMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-srv:status-val is deprecated.  Use base_drive_chain-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoboteqMode-response>) ostream)
  "Serializes a message object of type '<RoboteqMode-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoboteqMode-response>) istream)
  "Deserializes a message object of type '<RoboteqMode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoboteqMode-response>)))
  "Returns string type for a service object of type '<RoboteqMode-response>"
  "base_drive_chain/RoboteqModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoboteqMode-response)))
  "Returns string type for a service object of type 'RoboteqMode-response"
  "base_drive_chain/RoboteqModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoboteqMode-response>)))
  "Returns md5sum for a message object of type '<RoboteqMode-response>"
  "4107476a6271fc2684d94be17d33f854")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoboteqMode-response)))
  "Returns md5sum for a message object of type 'RoboteqMode-response"
  "4107476a6271fc2684d94be17d33f854")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoboteqMode-response>)))
  "Returns full string definition for message of type '<RoboteqMode-response>"
  (cl:format cl:nil "int64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoboteqMode-response)))
  "Returns full string definition for message of type 'RoboteqMode-response"
  (cl:format cl:nil "int64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoboteqMode-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoboteqMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RoboteqMode-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RoboteqMode)))
  'RoboteqMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RoboteqMode)))
  'RoboteqMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoboteqMode)))
  "Returns string type for a service object of type '<RoboteqMode>"
  "base_drive_chain/RoboteqMode")