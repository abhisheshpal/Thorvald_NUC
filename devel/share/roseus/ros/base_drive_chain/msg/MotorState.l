;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::MotorState)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'MotorState (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::MOTORSTATE")
  (make-package "BASE_DRIVE_CHAIN::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass base_drive_chain::MotorState
  :super ros::object
  :slots (_speed _position _motor_amps _relative_power ))

(defmethod base_drive_chain::MotorState
  (:init
   (&key
    ((:speed __speed) 0)
    ((:position __position) 0)
    ((:motor_amps __motor_amps) 0.0)
    ((:relative_power __relative_power) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _position (round __position))
   (setq _motor_amps (float __motor_amps))
   (setq _relative_power (round __relative_power))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:motor_amps
   (&optional __motor_amps)
   (if __motor_amps (setq _motor_amps __motor_amps)) _motor_amps)
  (:relative_power
   (&optional __relative_power)
   (if __relative_power (setq _relative_power __relative_power)) _relative_power)
  (:serialization-length
   ()
   (+
    ;; int16 _speed
    2
    ;; int32 _position
    4
    ;; float32 _motor_amps
    4
    ;; int16 _relative_power
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _speed
       (write-word _speed s)
     ;; int32 _position
       (write-long _position s)
     ;; float32 _motor_amps
       (sys::poke _motor_amps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _relative_power
       (write-word _relative_power s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _motor_amps
     (setq _motor_amps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _relative_power
     (setq _relative_power (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get base_drive_chain::MotorState :md5sum-) "414d541cba772f96c0da7fb1c738c878")
(setf (get base_drive_chain::MotorState :datatype-) "base_drive_chain/MotorState")
(setf (get base_drive_chain::MotorState :definition-)
      "int16 speed
int32 position
float32 motor_amps
int16 relative_power

")



(provide :base_drive_chain/MotorState "414d541cba772f96c0da7fb1c738c878")


