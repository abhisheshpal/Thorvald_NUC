;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::RoboteqMode)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'RoboteqMode (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::ROBOTEQMODE")
  (make-package "BASE_DRIVE_CHAIN::ROBOTEQMODE"))
(unless (find-package "BASE_DRIVE_CHAIN::ROBOTEQMODEREQUEST")
  (make-package "BASE_DRIVE_CHAIN::ROBOTEQMODEREQUEST"))
(unless (find-package "BASE_DRIVE_CHAIN::ROBOTEQMODERESPONSE")
  (make-package "BASE_DRIVE_CHAIN::ROBOTEQMODERESPONSE"))

(in-package "ROS")





(defclass base_drive_chain::RoboteqModeRequest
  :super ros::object
  :slots ())

(defmethod base_drive_chain::RoboteqModeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass base_drive_chain::RoboteqModeResponse
  :super ros::object
  :slots (_status ))

(defmethod base_drive_chain::RoboteqModeResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int64 _status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _status) (= (length (_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_status . bv) 0) 0) s)
              (write-long (ash (elt (_status . bv) 1) -1) s))
             ((and (class _status) (= (length (_status . bv)) 1)) ;; big1
              (write-long (elt (_status . bv) 0) s)
              (write-long (if (>= _status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _status s)(write-long (if (>= _status 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _status
#+(or :alpha :irix6 :x86_64)
      (setf _status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass base_drive_chain::RoboteqMode
  :super ros::object
  :slots ())

(setf (get base_drive_chain::RoboteqMode :md5sum-) "4107476a6271fc2684d94be17d33f854")
(setf (get base_drive_chain::RoboteqMode :datatype-) "base_drive_chain/RoboteqMode")
(setf (get base_drive_chain::RoboteqMode :request) base_drive_chain::RoboteqModeRequest)
(setf (get base_drive_chain::RoboteqMode :response) base_drive_chain::RoboteqModeResponse)

(defmethod base_drive_chain::RoboteqModeRequest
  (:response () (instance base_drive_chain::RoboteqModeResponse :init)))

(setf (get base_drive_chain::RoboteqModeRequest :md5sum-) "4107476a6271fc2684d94be17d33f854")
(setf (get base_drive_chain::RoboteqModeRequest :datatype-) "base_drive_chain/RoboteqModeRequest")
(setf (get base_drive_chain::RoboteqModeRequest :definition-)
      "---
int64 status

")

(setf (get base_drive_chain::RoboteqModeResponse :md5sum-) "4107476a6271fc2684d94be17d33f854")
(setf (get base_drive_chain::RoboteqModeResponse :datatype-) "base_drive_chain/RoboteqModeResponse")
(setf (get base_drive_chain::RoboteqModeResponse :definition-)
      "---
int64 status

")



(provide :base_drive_chain/RoboteqMode "4107476a6271fc2684d94be17d33f854")


