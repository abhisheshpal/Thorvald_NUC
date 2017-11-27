; Auto-generated. Do not edit!


(cl:in-package base_drive_chain-msg)


;//! \htmlinclude ControllerInfo.msg.html

(cl:defclass <ControllerInfo> (roslisp-msg-protocol:ros-message)
  ((drive_directions
    :reader drive_directions
    :initarg :drive_directions
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (home_counts
    :reader home_counts
    :initarg :home_counts
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ControllerInfo (<ControllerInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-msg:<ControllerInfo> is deprecated: use base_drive_chain-msg:ControllerInfo instead.")))

(cl:ensure-generic-function 'drive_directions-val :lambda-list '(m))
(cl:defmethod drive_directions-val ((m <ControllerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:drive_directions-val is deprecated.  Use base_drive_chain-msg:drive_directions instead.")
  (drive_directions m))

(cl:ensure-generic-function 'home_counts-val :lambda-list '(m))
(cl:defmethod home_counts-val ((m <ControllerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:home_counts-val is deprecated.  Use base_drive_chain-msg:home_counts instead.")
  (home_counts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerInfo>) ostream)
  "Serializes a message object of type '<ControllerInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'drive_directions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'drive_directions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'home_counts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'home_counts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerInfo>) istream)
  "Deserializes a message object of type '<ControllerInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'drive_directions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'drive_directions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'home_counts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'home_counts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerInfo>)))
  "Returns string type for a message object of type '<ControllerInfo>"
  "base_drive_chain/ControllerInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerInfo)))
  "Returns string type for a message object of type 'ControllerInfo"
  "base_drive_chain/ControllerInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerInfo>)))
  "Returns md5sum for a message object of type '<ControllerInfo>"
  "e2b2ee8fe293fac17d5e53963eed123c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerInfo)))
  "Returns md5sum for a message object of type 'ControllerInfo"
  "e2b2ee8fe293fac17d5e53963eed123c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerInfo>)))
  "Returns full string definition for message of type '<ControllerInfo>"
  (cl:format cl:nil "int16[] drive_directions~%int32[] home_counts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerInfo)))
  "Returns full string definition for message of type 'ControllerInfo"
  (cl:format cl:nil "int16[] drive_directions~%int32[] home_counts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'drive_directions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'home_counts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerInfo
    (cl:cons ':drive_directions (drive_directions msg))
    (cl:cons ':home_counts (home_counts msg))
))
