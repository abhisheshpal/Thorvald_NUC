;; Auto-generated. Do not edit!


(when (boundp 'base_drive_chain::ControllerInfo)
  (if (not (find-package "BASE_DRIVE_CHAIN"))
    (make-package "BASE_DRIVE_CHAIN"))
  (shadow 'ControllerInfo (find-package "BASE_DRIVE_CHAIN")))
(unless (find-package "BASE_DRIVE_CHAIN::CONTROLLERINFO")
  (make-package "BASE_DRIVE_CHAIN::CONTROLLERINFO"))

(in-package "ROS")
;;//! \htmlinclude ControllerInfo.msg.html


(defclass base_drive_chain::ControllerInfo
  :super ros::object
  :slots (_drive_directions _home_counts ))

(defmethod base_drive_chain::ControllerInfo
  (:init
   (&key
    ((:drive_directions __drive_directions) (make-array 0 :initial-element 0 :element-type :integer))
    ((:home_counts __home_counts) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _drive_directions __drive_directions)
   (setq _home_counts __home_counts)
   self)
  (:drive_directions
   (&optional __drive_directions)
   (if __drive_directions (setq _drive_directions __drive_directions)) _drive_directions)
  (:home_counts
   (&optional __home_counts)
   (if __home_counts (setq _home_counts __home_counts)) _home_counts)
  (:serialization-length
   ()
   (+
    ;; int16[] _drive_directions
    (* 2    (length _drive_directions)) 4
    ;; int32[] _home_counts
    (* 4    (length _home_counts)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[] _drive_directions
     (write-long (length _drive_directions) s)
     (dotimes (i (length _drive_directions))
       (write-word (elt _drive_directions i) s)
       )
     ;; int32[] _home_counts
     (write-long (length _home_counts) s)
     (dotimes (i (length _home_counts))
       (write-long (elt _home_counts i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[] _drive_directions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drive_directions (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _drive_directions i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int32[] _home_counts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _home_counts (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _home_counts i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get base_drive_chain::ControllerInfo :md5sum-) "e2b2ee8fe293fac17d5e53963eed123c")
(setf (get base_drive_chain::ControllerInfo :datatype-) "base_drive_chain/ControllerInfo")
(setf (get base_drive_chain::ControllerInfo :definition-)
      "int16[] drive_directions
int32[] home_counts

")



(provide :base_drive_chain/ControllerInfo "e2b2ee8fe293fac17d5e53963eed123c")


