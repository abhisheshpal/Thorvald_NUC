;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::BaseState)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'BaseState (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::BASESTATE")
  (make-package "BASE_DRIVE_CHAIN::BASESTATE"))

(in-package "ROS")
;;//! \htmlinclude BaseState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass base_drive_chain::BaseState
  :super ros::object
  :slots (_header _drive_mode _vel _position _pos_max_vel ))

(defmethod base_drive_chain::BaseState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drive_mode __drive_mode) 0)
    ((:vel __vel) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pos_max_vel __pos_max_vel) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _drive_mode (round __drive_mode))
   (setq _vel __vel)
   (setq _position __position)
   (setq _pos_max_vel __pos_max_vel)
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
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:pos_max_vel
   (&optional __pos_max_vel)
   (if __pos_max_vel (setq _pos_max_vel __pos_max_vel)) _pos_max_vel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _drive_mode
    2
    ;; int16[] _vel
    (* 2    (length _vel)) 4
    ;; int32[] _position
    (* 4    (length _position)) 4
    ;; int32[] _pos_max_vel
    (* 4    (length _pos_max_vel)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _drive_mode
       (write-word _drive_mode s)
     ;; int16[] _vel
     (write-long (length _vel) s)
     (dotimes (i (length _vel))
       (write-word (elt _vel i) s)
       )
     ;; int32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (write-long (elt _position i) s)
       )
     ;; int32[] _pos_max_vel
     (write-long (length _pos_max_vel) s)
     (dotimes (i (length _pos_max_vel))
       (write-long (elt _pos_max_vel i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _drive_mode
     (setq _drive_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _vel i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _pos_max_vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_max_vel (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pos_max_vel i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get base_drive_chain::BaseState :md5sum-) "63318a0806bc66c83a396c532d46cb86")
(setf (get base_drive_chain::BaseState :datatype-) "base_drive_chain/BaseState")
(setf (get base_drive_chain::BaseState :definition-)
      "Header header
int16 drive_mode
int16[] vel
int32[] position
int32[] pos_max_vel

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

")



(provide :base_drive_chain/BaseState "63318a0806bc66c83a396c532d46cb86")


