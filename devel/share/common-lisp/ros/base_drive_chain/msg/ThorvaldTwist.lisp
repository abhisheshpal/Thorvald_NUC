; Auto-generated. Do not edit!


(cl:in-package base_drive_chain-msg)


;//! \htmlinclude ThorvaldTwist.msg.html

(cl:defclass <ThorvaldTwist> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (drive_mode
    :reader drive_mode
    :initarg :drive_mode
    :type cl:fixnum
    :initform 0)
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:TwistWithCovarianceStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovarianceStamped)))
)

(cl:defclass ThorvaldTwist (<ThorvaldTwist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThorvaldTwist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThorvaldTwist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_drive_chain-msg:<ThorvaldTwist> is deprecated: use base_drive_chain-msg:ThorvaldTwist instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThorvaldTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:header-val is deprecated.  Use base_drive_chain-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'drive_mode-val :lambda-list '(m))
(cl:defmethod drive_mode-val ((m <ThorvaldTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:drive_mode-val is deprecated.  Use base_drive_chain-msg:drive_mode instead.")
  (drive_mode m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <ThorvaldTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_drive_chain-msg:twist-val is deprecated.  Use base_drive_chain-msg:twist instead.")
  (twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThorvaldTwist>) ostream)
  "Serializes a message object of type '<ThorvaldTwist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'drive_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThorvaldTwist>) istream)
  "Deserializes a message object of type '<ThorvaldTwist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drive_mode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThorvaldTwist>)))
  "Returns string type for a message object of type '<ThorvaldTwist>"
  "base_drive_chain/ThorvaldTwist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThorvaldTwist)))
  "Returns string type for a message object of type 'ThorvaldTwist"
  "base_drive_chain/ThorvaldTwist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThorvaldTwist>)))
  "Returns md5sum for a message object of type '<ThorvaldTwist>"
  "e18834f49546c94039f55b092de9d1a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThorvaldTwist)))
  "Returns md5sum for a message object of type 'ThorvaldTwist"
  "e18834f49546c94039f55b092de9d1a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThorvaldTwist>)))
  "Returns full string definition for message of type '<ThorvaldTwist>"
  (cl:format cl:nil "Header header~%int16 drive_mode~%geometry_msgs/TwistWithCovarianceStamped twist~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovarianceStamped~%# This represents an estimated twist with reference coordinate frame and timestamp.~%Header header~%TwistWithCovariance twist~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThorvaldTwist)))
  "Returns full string definition for message of type 'ThorvaldTwist"
  (cl:format cl:nil "Header header~%int16 drive_mode~%geometry_msgs/TwistWithCovarianceStamped twist~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovarianceStamped~%# This represents an estimated twist with reference coordinate frame and timestamp.~%Header header~%TwistWithCovariance twist~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThorvaldTwist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThorvaldTwist>))
  "Converts a ROS message object to a list"
  (cl:list 'ThorvaldTwist
    (cl:cons ':header (header msg))
    (cl:cons ':drive_mode (drive_mode msg))
    (cl:cons ':twist (twist msg))
))
