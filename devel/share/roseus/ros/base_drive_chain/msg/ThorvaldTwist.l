;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::ThorvaldTwist)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'ThorvaldTwist (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::THORVALDTWIST")
  (make-package "BASE_DRIVE_CHAIN::THORVALDTWIST"))

(in-package "ROS")
;;//! \htmlinclude ThorvaldTwist.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass base_drive_chain::ThorvaldTwist
  :super ros::object
  :slots (_header _drive_mode _twist ))

(defmethod base_drive_chain::ThorvaldTwist
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drive_mode __drive_mode) 0)
    ((:twist __twist) (instance geometry_msgs::TwistWithCovarianceStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _drive_mode (round __drive_mode))
   (setq _twist __twist)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drive_mode
   (&optional __drive_mode)
   (if __drive_mode (setq _drive_mode __drive_mode)) _drive_mode)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _drive_mode
    2
    ;; geometry_msgs/TwistWithCovarianceStamped _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _drive_mode
       (write-word _drive_mode s)
     ;; geometry_msgs/TwistWithCovarianceStamped _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _drive_mode
     (setq _drive_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/TwistWithCovarianceStamped _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(setf (get base_drive_chain::ThorvaldTwist :md5sum-) "e18834f49546c94039f55b092de9d1a2")
(setf (get base_drive_chain::ThorvaldTwist :datatype-) "base_drive_chain/ThorvaldTwist")
(setf (get base_drive_chain::ThorvaldTwist :definition-)
      "Header header
int16 drive_mode
geometry_msgs/TwistWithCovarianceStamped twist


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/TwistWithCovarianceStamped
# This represents an estimated twist with reference coordinate frame and timestamp.
Header header
TwistWithCovariance twist

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :base_drive_chain/ThorvaldTwist "e18834f49546c94039f55b092de9d1a2")


