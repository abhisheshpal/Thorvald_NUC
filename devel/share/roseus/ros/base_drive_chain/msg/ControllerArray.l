;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::ControllerArray)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'ControllerArray (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::CONTROLLERARRAY")
  (make-package "BASE_DRIVE_CHAIN::CONTROLLERARRAY"))

(in-package "ROS")
;;//! \htmlinclude ControllerArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass base_drive_chain::ControllerArray
  :super ros::object
  :slots (_header _controller_data ))

(defmethod base_drive_chain::ControllerArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:controller_data __controller_data) (let (r) (dotimes (i 0) (push (instance base_drive_chain::ControllerData :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _controller_data __controller_data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:controller_data
   (&rest __controller_data)
   (if (keywordp (car __controller_data))
       (send* _controller_data __controller_data)
     (progn
       (if __controller_data (setq _controller_data (car __controller_data)))
       _controller_data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; base_drive_chain/ControllerData[] _controller_data
    (apply #'+ (send-all _controller_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; base_drive_chain/ControllerData[] _controller_data
     (write-long (length _controller_data) s)
     (dolist (elem _controller_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; base_drive_chain/ControllerData[] _controller_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controller_data (let (r) (dotimes (i n) (push (instance base_drive_chain::ControllerData :init) r)) r))
     (dolist (elem- _controller_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get base_drive_chain::ControllerArray :md5sum-) "bd69d6925463f483a09ba76d83f3c179")
(setf (get base_drive_chain::ControllerArray :datatype-) "base_drive_chain/ControllerArray")
(setf (get base_drive_chain::ControllerArray :definition-)
      "Header header
ControllerData[] controller_data


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
MSG: base_drive_chain/ControllerData
ControllerConfig controller_config
ControllerState controller_state
MotorState propulsion_state
MotorState steering_state


================================================================================
MSG: base_drive_chain/ControllerConfig
int16 can_id
int8 drive_direction
int16 home_speed
int32 home_count

================================================================================
MSG: base_drive_chain/ControllerState
int8 controller_mode
float32 battery_volts
float32 battery_amps
int16 max_temp
bool[] status_flags

================================================================================
MSG: base_drive_chain/MotorState
int16 speed
int32 position
float32 motor_amps
int16 relative_power

")



(provide :base_drive_chain/ControllerArray "bd69d6925463f483a09ba76d83f3c179")


