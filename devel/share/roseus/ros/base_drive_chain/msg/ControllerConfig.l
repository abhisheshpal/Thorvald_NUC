;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::ControllerConfig)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'ControllerConfig (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::CONTROLLERCONFIG")
  (make-package "BASE_DRIVE_CHAIN::CONTROLLERCONFIG"))

(in-package "ROS")
;;//! \htmlinclude ControllerConfig.msg.html


(defclass base_drive_chain::ControllerConfig
  :super ros::object
  :slots (_can_id _drive_direction _home_speed _home_count ))

(defmethod base_drive_chain::ControllerConfig
  (:init
   (&key
    ((:can_id __can_id) 0)
    ((:drive_direction __drive_direction) 0)
    ((:home_speed __home_speed) 0)
    ((:home_count __home_count) 0)
    )
   (send-super :init)
   (setq _can_id (round __can_id))
   (setq _drive_direction (round __drive_direction))
   (setq _home_speed (round __home_speed))
   (setq _home_count (round __home_count))
   self)
  (:can_id
   (&optional __can_id)
   (if __can_id (setq _can_id __can_id)) _can_id)
  (:drive_direction
   (&optional __drive_direction)
   (if __drive_direction (setq _drive_direction __drive_direction)) _drive_direction)
  (:home_speed
   (&optional __home_speed)
   (if __home_speed (setq _home_speed __home_speed)) _home_speed)
  (:home_count
   (&optional __home_count)
   (if __home_count (setq _home_count __home_count)) _home_count)
  (:serialization-length
   ()
   (+
    ;; int16 _can_id
    2
    ;; int8 _drive_direction
    1
    ;; int16 _home_speed
    2
    ;; int32 _home_count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _can_id
       (write-word _can_id s)
     ;; int8 _drive_direction
       (write-byte _drive_direction s)
     ;; int16 _home_speed
       (write-word _home_speed s)
     ;; int32 _home_count
       (write-long _home_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _can_id
     (setq _can_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _drive_direction
     (setq _drive_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _drive_direction 127) (setq _drive_direction (- _drive_direction 256)))
   ;; int16 _home_speed
     (setq _home_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _home_count
     (setq _home_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get base_drive_chain::ControllerConfig :md5sum-) "25f378ae64e2242b15491b758193668c")
(setf (get base_drive_chain::ControllerConfig :datatype-) "base_drive_chain/ControllerConfig")
(setf (get base_drive_chain::ControllerConfig :definition-)
      "int16 can_id
int8 drive_direction
int16 home_speed
int32 home_count

")



(provide :base_drive_chain/ControllerConfig "25f378ae64e2242b15491b758193668c")


