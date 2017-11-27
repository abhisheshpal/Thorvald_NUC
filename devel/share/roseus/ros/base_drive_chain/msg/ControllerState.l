;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::ControllerState)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'ControllerState (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::CONTROLLERSTATE")
  (make-package "BASE_DRIVE_CHAIN::CONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude ControllerState.msg.html


(defclass base_drive_chain::ControllerState
  :super ros::object
  :slots (_controller_mode _battery_volts _battery_amps _max_temp _status_flags ))

(defmethod base_drive_chain::ControllerState
  (:init
   (&key
    ((:controller_mode __controller_mode) 0)
    ((:battery_volts __battery_volts) 0.0)
    ((:battery_amps __battery_amps) 0.0)
    ((:max_temp __max_temp) 0)
    ((:status_flags __status_flags) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _controller_mode (round __controller_mode))
   (setq _battery_volts (float __battery_volts))
   (setq _battery_amps (float __battery_amps))
   (setq _max_temp (round __max_temp))
   (setq _status_flags __status_flags)
   self)
  (:controller_mode
   (&optional __controller_mode)
   (if __controller_mode (setq _controller_mode __controller_mode)) _controller_mode)
  (:battery_volts
   (&optional __battery_volts)
   (if __battery_volts (setq _battery_volts __battery_volts)) _battery_volts)
  (:battery_amps
   (&optional __battery_amps)
   (if __battery_amps (setq _battery_amps __battery_amps)) _battery_amps)
  (:max_temp
   (&optional __max_temp)
   (if __max_temp (setq _max_temp __max_temp)) _max_temp)
  (:status_flags
   (&optional __status_flags)
   (if __status_flags (setq _status_flags __status_flags)) _status_flags)
  (:serialization-length
   ()
   (+
    ;; int8 _controller_mode
    1
    ;; float32 _battery_volts
    4
    ;; float32 _battery_amps
    4
    ;; int16 _max_temp
    2
    ;; bool[] _status_flags
    (* 1    (length _status_flags)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _controller_mode
       (write-byte _controller_mode s)
     ;; float32 _battery_volts
       (sys::poke _battery_volts (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_amps
       (sys::poke _battery_amps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _max_temp
       (write-word _max_temp s)
     ;; bool[] _status_flags
     (write-long (length _status_flags) s)
     (dotimes (i (length _status_flags))
       (if (elt _status_flags i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _controller_mode
     (setq _controller_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _controller_mode 127) (setq _controller_mode (- _controller_mode 256)))
   ;; float32 _battery_volts
     (setq _battery_volts (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_amps
     (setq _battery_amps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _max_temp
     (setq _max_temp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool[] _status_flags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status_flags (make-list n))
     (dotimes (i n)
     (setf (elt _status_flags i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get base_drive_chain::ControllerState :md5sum-) "6cc274a1867f3f7db3f1191e8caf70dc")
(setf (get base_drive_chain::ControllerState :datatype-) "base_drive_chain/ControllerState")
(setf (get base_drive_chain::ControllerState :definition-)
      "int8 controller_mode
float32 battery_volts
float32 battery_amps
int16 max_temp
bool[] status_flags

")



(provide :base_drive_chain/ControllerState "6cc274a1867f3f7db3f1191e8caf70dc")


