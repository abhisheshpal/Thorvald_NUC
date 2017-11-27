;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::ControllerData)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'ControllerData (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::CONTROLLERDATA")
  (make-package "BASE_DRIVE_CHAIN::CONTROLLERDATA"))

(in-package "ROS")
;;//! \htmlinclude ControllerData.msg.html


(defclass base_drive_chain::ControllerData
  :super ros::object
  :slots (_controller_config _controller_state _propulsion_state _steering_state ))

(defmethod base_drive_chain::ControllerData
  (:init
   (&key
    ((:controller_config __controller_config) (instance base_drive_chain::ControllerConfig :init))
    ((:controller_state __controller_state) (instance base_drive_chain::ControllerState :init))
    ((:propulsion_state __propulsion_state) (instance base_drive_chain::MotorState :init))
    ((:steering_state __steering_state) (instance base_drive_chain::MotorState :init))
    )
   (send-super :init)
   (setq _controller_config __controller_config)
   (setq _controller_state __controller_state)
   (setq _propulsion_state __propulsion_state)
   (setq _steering_state __steering_state)
   self)
  (:controller_config
   (&rest __controller_config)
   (if (keywordp (car __controller_config))
       (send* _controller_config __controller_config)
     (progn
       (if __controller_config (setq _controller_config (car __controller_config)))
       _controller_config)))
  (:controller_state
   (&rest __controller_state)
   (if (keywordp (car __controller_state))
       (send* _controller_state __controller_state)
     (progn
       (if __controller_state (setq _controller_state (car __controller_state)))
       _controller_state)))
  (:propulsion_state
   (&rest __propulsion_state)
   (if (keywordp (car __propulsion_state))
       (send* _propulsion_state __propulsion_state)
     (progn
       (if __propulsion_state (setq _propulsion_state (car __propulsion_state)))
       _propulsion_state)))
  (:steering_state
   (&rest __steering_state)
   (if (keywordp (car __steering_state))
       (send* _steering_state __steering_state)
     (progn
       (if __steering_state (setq _steering_state (car __steering_state)))
       _steering_state)))
  (:serialization-length
   ()
   (+
    ;; base_drive_chain/ControllerConfig _controller_config
    (send _controller_config :serialization-length)
    ;; base_drive_chain/ControllerState _controller_state
    (send _controller_state :serialization-length)
    ;; base_drive_chain/MotorState _propulsion_state
    (send _propulsion_state :serialization-length)
    ;; base_drive_chain/MotorState _steering_state
    (send _steering_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; base_drive_chain/ControllerConfig _controller_config
       (send _controller_config :serialize s)
     ;; base_drive_chain/ControllerState _controller_state
       (send _controller_state :serialize s)
     ;; base_drive_chain/MotorState _propulsion_state
       (send _propulsion_state :serialize s)
     ;; base_drive_chain/MotorState _steering_state
       (send _steering_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; base_drive_chain/ControllerConfig _controller_config
     (send _controller_config :deserialize buf ptr-) (incf ptr- (send _controller_config :serialization-length))
   ;; base_drive_chain/ControllerState _controller_state
     (send _controller_state :deserialize buf ptr-) (incf ptr- (send _controller_state :serialization-length))
   ;; base_drive_chain/MotorState _propulsion_state
     (send _propulsion_state :deserialize buf ptr-) (incf ptr- (send _propulsion_state :serialization-length))
   ;; base_drive_chain/MotorState _steering_state
     (send _steering_state :deserialize buf ptr-) (incf ptr- (send _steering_state :serialization-length))
   ;;
   self)
  )

(setf (get base_drive_chain::ControllerData :md5sum-) "3c35784ec8577aa62e884e136ae154dc")
(setf (get base_drive_chain::ControllerData :datatype-) "base_drive_chain/ControllerData")
(setf (get base_drive_chain::ControllerData :definition-)
      "ControllerConfig controller_config
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



(provide :base_drive_chain/ControllerData "3c35784ec8577aa62e884e136ae154dc")


