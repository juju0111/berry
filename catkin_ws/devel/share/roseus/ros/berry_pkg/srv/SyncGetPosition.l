;; Auto-generated. Do not edit!


(when (boundp 'berry_pkg::SyncGetPosition)
  (if (not (find-package "BERRY_PKG"))
    (make-package "BERRY_PKG"))
  (shadow 'SyncGetPosition (find-package "BERRY_PKG")))
(unless (find-package "BERRY_PKG::SYNCGETPOSITION")
  (make-package "BERRY_PKG::SYNCGETPOSITION"))
(unless (find-package "BERRY_PKG::SYNCGETPOSITIONREQUEST")
  (make-package "BERRY_PKG::SYNCGETPOSITIONREQUEST"))
(unless (find-package "BERRY_PKG::SYNCGETPOSITIONRESPONSE")
  (make-package "BERRY_PKG::SYNCGETPOSITIONRESPONSE"))

(in-package "ROS")





(defclass berry_pkg::SyncGetPositionRequest
  :super ros::object
  :slots (_id1 _id2 ))

(defmethod berry_pkg::SyncGetPositionRequest
  (:init
   (&key
    ((:id1 __id1) 0)
    ((:id2 __id2) 0)
    )
   (send-super :init)
   (setq _id1 (round __id1))
   (setq _id2 (round __id2))
   self)
  (:id1
   (&optional __id1)
   (if __id1 (setq _id1 __id1)) _id1)
  (:id2
   (&optional __id2)
   (if __id2 (setq _id2 __id2)) _id2)
  (:serialization-length
   ()
   (+
    ;; uint8 _id1
    1
    ;; uint8 _id2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id1
       (write-byte _id1 s)
     ;; uint8 _id2
       (write-byte _id2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id1
     (setq _id1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id2
     (setq _id2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass berry_pkg::SyncGetPositionResponse
  :super ros::object
  :slots (_position1 _position2 ))

(defmethod berry_pkg::SyncGetPositionResponse
  (:init
   (&key
    ((:position1 __position1) 0)
    ((:position2 __position2) 0)
    )
   (send-super :init)
   (setq _position1 (round __position1))
   (setq _position2 (round __position2))
   self)
  (:position1
   (&optional __position1)
   (if __position1 (setq _position1 __position1)) _position1)
  (:position2
   (&optional __position2)
   (if __position2 (setq _position2 __position2)) _position2)
  (:serialization-length
   ()
   (+
    ;; int32 _position1
    4
    ;; int32 _position2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _position1
       (write-long _position1 s)
     ;; int32 _position2
       (write-long _position2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _position1
     (setq _position1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position2
     (setq _position2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass berry_pkg::SyncGetPosition
  :super ros::object
  :slots ())

(setf (get berry_pkg::SyncGetPosition :md5sum-) "4a5a90af26ce6360c45e1980f134941b")
(setf (get berry_pkg::SyncGetPosition :datatype-) "berry_pkg/SyncGetPosition")
(setf (get berry_pkg::SyncGetPosition :request) berry_pkg::SyncGetPositionRequest)
(setf (get berry_pkg::SyncGetPosition :response) berry_pkg::SyncGetPositionResponse)

(defmethod berry_pkg::SyncGetPositionRequest
  (:response () (instance berry_pkg::SyncGetPositionResponse :init)))

(setf (get berry_pkg::SyncGetPositionRequest :md5sum-) "4a5a90af26ce6360c45e1980f134941b")
(setf (get berry_pkg::SyncGetPositionRequest :datatype-) "berry_pkg/SyncGetPositionRequest")
(setf (get berry_pkg::SyncGetPositionRequest :definition-)
      "uint8 id1
uint8 id2
---
int32 position1
int32 position2

")

(setf (get berry_pkg::SyncGetPositionResponse :md5sum-) "4a5a90af26ce6360c45e1980f134941b")
(setf (get berry_pkg::SyncGetPositionResponse :datatype-) "berry_pkg/SyncGetPositionResponse")
(setf (get berry_pkg::SyncGetPositionResponse :definition-)
      "uint8 id1
uint8 id2
---
int32 position1
int32 position2

")



(provide :berry_pkg/SyncGetPosition "4a5a90af26ce6360c45e1980f134941b")


