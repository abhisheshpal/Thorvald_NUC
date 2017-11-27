;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::MotorControllerSetup)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'MotorControllerSetup (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::MOTORCONTROLLERSETUP")
  (make-package "BASE_DRIVE_CHAIN::MOTORCONTROLLERSETUP"))
(unless (find-package "BASE_DRIVE_CHAIN::MOTORCONTROLLERSETUPREQUEST")
  (make-package "BASE_DRIVE_CHAIN::MOTORCONTROLLERSETUPREQUEST"))
(unless (find-package "BASE_DRIVE_CHAIN::MOTORCONTROLLERSETUPRESPONSE")
  (make-package "BASE_DRIVE_CHAIN::MOTORCONTROLLERSETUPRESPONSE"))

(in-package "ROS")





(defclass base_drive_chain::MotorControllerSetupRequest
  :super ros::object
  :slots (_can_id _setup_id _setup_value ))

(defmethod base_drive_chain::MotorControllerSetupRequest
  (:init
   (&key
    ((:can_id __can_id) 0)
    ((:setup_id __setup_id) 0)
    ((:setup_value __setup_value) 0)
    )
   (send-super :init)
   (setq _can_id (round __can_id))
   (setq _setup_id (round __setup_id))
   (setq _setup_value (round __setup_value))
   self)
  (:can_id
   (&optional __can_id)
   (if __can_id (setq _can_id __can_id)) _can_id)
  (:setup_id
   (&optional __setup_id)
   (if __setup_id (setq _setup_id __setup_id)) _setup_id)
  (:setup_value
   (&optional __setup_value)
   (if __setup_value (setq _setup_value __setup_value)) _setup_value)
  (:serialization-length
   ()
   (+
    ;; int32 _can_id
    4
    ;; int32 _setup_id
    4
    ;; int32 _setup_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _can_id
       (write-long _can_id s)
     ;; int32 _setup_id
       (write-long _setup_id s)
     ;; int32 _setup_value
       (write-long _setup_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _can_id
     (setq _can_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _setup_id
     (setq _setup_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _setup_value
     (setq _setup_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass base_drive_chain::MotorControllerSetupResponse
  :super ros::object
  :slots (_message _status ))

(defmethod base_drive_chain::MotorControllerSetupResponse
  (:init
   (&key
    ((:message __message) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _status (round __status))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass base_drive_chain::MotorControllerSetup
  :super ros::object
  :slots ())

(setf (get base_drive_chain::MotorControllerSetup :md5sum-) "24c0c7fdc8d1bb416db60b20cb2324c6")
(setf (get base_drive_chain::MotorControllerSetup :datatype-) "base_drive_chain/MotorControllerSetup")
(setf (get base_drive_chain::MotorControllerSetup :request) base_drive_chain::MotorControllerSetupRequest)
(setf (get base_drive_chain::MotorControllerSetup :response) base_drive_chain::MotorControllerSetupResponse)

(defmethod base_drive_chain::MotorControllerSetupRequest
  (:response () (instance base_drive_chain::MotorControllerSetupResponse :init)))

(setf (get base_drive_chain::MotorControllerSetupRequest :md5sum-) "24c0c7fdc8d1bb416db60b20cb2324c6")
(setf (get base_drive_chain::MotorControllerSetupRequest :datatype-) "base_drive_chain/MotorControllerSetupRequest")
(setf (get base_drive_chain::MotorControllerSetupRequest :definition-)
      "int32 can_id
int32 setup_id
int32 setup_value
---
string message
int32 status

")

(setf (get base_drive_chain::MotorControllerSetupResponse :md5sum-) "24c0c7fdc8d1bb416db60b20cb2324c6")
(setf (get base_drive_chain::MotorControllerSetupResponse :datatype-) "base_drive_chain/MotorControllerSetupResponse")
(setf (get base_drive_chain::MotorControllerSetupResponse :definition-)
      "int32 can_id
int32 setup_id
int32 setup_value
---
string message
int32 status

")



(provide :base_drive_chain/MotorControllerSetup "24c0c7fdc8d1bb416db60b20cb2324c6")


