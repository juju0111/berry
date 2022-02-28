;; Auto-generated. Do not edit!


(when (boundp 'berry_pkg::GetPosition)
  (if (not (find-package "BERRY_PKG"))
    (make-package "BERRY_PKG"))
  (shadow 'GetPosition (find-package "BERRY_PKG")))
(unless (find-package "BERRY_PKG::GETPOSITION")
  (make-package "BERRY_PKG::GETPOSITION"))
(unless (find-package "BERRY_PKG::GETPOSITIONREQUEST")
  (make-package "BERRY_PKG::GETPOSITIONREQUEST"))
(unless (find-package "BERRY_PKG::GETPOSITIONRESPONSE")
  (make-package "BERRY_PKG::GETPOSITIONRESPONSE"))

(in-package "ROS")





(defclass berry_pkg::GetPositionRequest
  :super ros::object
  :slots (_id ))

(defmethod berry_pkg::GetPositionRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass berry_pkg::GetPositionResponse
  :super ros::object
  :slots (_position ))

(defmethod berry_pkg::GetPositionResponse
  (:init
   (&key
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _position (round __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _position
       (write-long _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass berry_pkg::GetPosition
  :super ros::object
  :slots ())

(setf (get berry_pkg::GetPosition :md5sum-) "b532ace3b383dc4c9e64687156423ac0")
(setf (get berry_pkg::GetPosition :datatype-) "berry_pkg/GetPosition")
(setf (get berry_pkg::GetPosition :request) berry_pkg::GetPositionRequest)
(setf (get berry_pkg::GetPosition :response) berry_pkg::GetPositionResponse)

(defmethod berry_pkg::GetPositionRequest
  (:response () (instance berry_pkg::GetPositionResponse :init)))

(setf (get berry_pkg::GetPositionRequest :md5sum-) "b532ace3b383dc4c9e64687156423ac0")
(setf (get berry_pkg::GetPositionRequest :datatype-) "berry_pkg/GetPositionRequest")
(setf (get berry_pkg::GetPositionRequest :definition-)
      "uint8 id
---
int32 position

")

(setf (get berry_pkg::GetPositionResponse :md5sum-) "b532ace3b383dc4c9e64687156423ac0")
(setf (get berry_pkg::GetPositionResponse :datatype-) "berry_pkg/GetPositionResponse")
(setf (get berry_pkg::GetPositionResponse :definition-)
      "uint8 id
---
int32 position

")



(provide :berry_pkg/GetPosition "b532ace3b383dc4c9e64687156423ac0")


