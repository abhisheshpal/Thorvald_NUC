; Auto-generated. Do not edit!


(cl:in-package thorvald_2d_nav-msg)


;//! \htmlinclude RampClimbingGoal.msg.html

(cl:defclass <RampClimbingGoal> (roslisp-msg-protocol:ros-message)
  ((timeOut
    :reader timeOut
    :initarg :timeOut
    :type cl:integer
    :initform 0))
)

(cl:defclass RampClimbingGoal (<RampClimbingGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RampClimbingGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RampClimbingGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name thorvald_2d_nav-msg:<RampClimbingGoal> is deprecated: use thorvald_2d_nav-msg:RampClimbingGoal instead.")))

(cl:ensure-generic-function 'timeOut-val :lambda-list '(m))
(cl:defmethod timeOut-val ((m <RampClimbingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader thorvald_2d_nav-msg:timeOut-val is deprecated.  Use thorvald_2d_nav-msg:timeOut instead.")
  (timeOut m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RampClimbingGoal>) ostream)
  "Serializes a message object of type '<RampClimbingGoal>"
  (cl:let* ((signed (cl:slot-value msg 'timeOut)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RampClimbingGoal>) istream)
  "Deserializes a message object of type '<RampClimbingGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeOut) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RampClimbingGoal>)))
  "Returns string type for a message object of type '<RampClimbingGoal>"
  "thorvald_2d_nav/RampClimbingGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RampClimbingGoal)))
  "Returns string type for a message object of type 'RampClimbingGoal"
  "thorvald_2d_nav/RampClimbingGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RampClimbingGoal>)))
  "Returns md5sum for a message object of type '<RampClimbingGoal>"
  "23ef38af95c519c40b2c7d883c44616f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RampClimbingGoal)))
  "Returns md5sum for a message object of type 'RampClimbingGoal"
  "23ef38af95c519c40b2c7d883c44616f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RampClimbingGoal>)))
  "Returns full string definition for message of type '<RampClimbingGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int64 timeOut ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RampClimbingGoal)))
  "Returns full string definition for message of type 'RampClimbingGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int64 timeOut ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RampClimbingGoal>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RampClimbingGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'RampClimbingGoal
    (cl:cons ':timeOut (timeOut msg))
))