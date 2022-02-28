;; Auto-generated. Do not edit!


(when (boundp 'berry_pkg::BerryGetPosition)
  (if (not (find-package "BERRY_PKG"))
    (make-package "BERRY_PKG"))
  (shadow 'BerryGetPosition (find-package "BERRY_PKG")))
(unless (find-package "BERRY_PKG::BERRYGETPOSITION")
  (make-package "BERRY_PKG::BERRYGETPOSITION"))
(unless (find-package "BERRY_PKG::BERRYGETPOSITIONREQUEST")
  (make-package "BERRY_PKG::BERRYGETPOSITIONREQUEST"))
(unless (find-package "BERRY_PKG::BERRYGETPOSITIONRESPONSE")
  (make-package "BERRY_PKG::BERRYGETPOSITIONRESPONSE"))

(in-package "ROS")





(defclass berry_pkg::BerryGetPositionRequest
  :super ros::object
  :slots (_id1 _id2 _id3 _id4 ))

(defmethod berry_pkg::BerryGetPositionRequest
  (:init
   (&key
    ((:id1 __id1) 0)
    ((:id2 __id2) 0)
    ((:id3 __id3) 0)
    ((:id4 __id4) 0)
    )
   (send-super :init)
   (setq _id1 (round __id1))
   (setq _id2 (round __id2))
   (setq _id3 (round __id3))
   (setq _id4 (round __id4))
   self)
  (:id1
   (&optional __id1)
   (if __id1 (setq _id1 __id1)) _id1)
  (:id2
   (&optional __id2)
   (if __id2 (setq _id2 __id2)) _id2)
  (:id3
   (&optional __id3)
   (if __id3 (setq _id3 __id3)) _id3)
  (:id4
   (&optional __id4)
   (if __id4 (setq _id4 __id4)) _id4)
  (:serialization-length
   ()
   (+
    ;; uint8 _id1
    1
    ;; uint8 _id2
    1
    ;; uint8 _id3
    1
    ;; uint8 _id4
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
     ;; uint8 _id3
       (write-byte _id3 s)
     ;; uint8 _id4
       (write-byte _id4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id1
     (setq _id1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id2
     (setq _id2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id3
     (setq _id3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id4
     (setq _id4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass berry_pkg::BerryGetPositionResponse
  :super ros::object
  :slots (_position1 _position2 _position3 _position4 ))

(defmethod berry_pkg::BerryGetPositionResponse
  (:init
   (&key
    ((:position1 __position1) 0)
    ((:position2 __position2) 0)
    ((:position3 __position3) 0)
    ((:position4 __position4) 0)
    )
   (send-super :init)
   (setq _position1 (round __position1))
   (setq _position2 (round __position2))
   (setq _position3 (round __position3))
   (setq _position4 (round __position4))
   self)
  (:position1
   (&optional __position1)
   (if __position1 (setq _position1 __position1)) _position1)
  (:position2
   (&optional __position2)
   (if __position2 (setq _position2 __position2)) _position2)
  (:position3
   (&optional __position3)
   (if __position3 (setq _position3 __position3)) _position3)
  (:position4
   (&optional __position4)
   (if __position4 (setq _position4 __position4)) _position4)
  (:serialization-length
   ()
   (+
    ;; int32 _position1
    4
    ;; int32 _position2
    4
    ;; int32 _position3
    4
    ;; int32 _position4
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
     ;; int32 _position3
       (write-long _position3 s)
     ;; int32 _position4
       (write-long _position4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _position1
     (setq _position1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position2
     (setq _position2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position3
     (setq _position3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position4
     (setq _position4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass berry_pkg::BerryGetPosition
  :super ros::object
  :slots ())

(setf (get berry_pkg::BerryGetPosition :md5sum-) "b38e30458a843d420744e165c938e395")
(setf (get berry_pkg::BerryGetPosition :datatype-) "berry_pkg/BerryGetPosition")
(setf (get berry_pkg::BerryGetPosition :request) berry_pkg::BerryGetPositionRequest)
(setf (get berry_pkg::BerryGetPosition :response) berry_pkg::BerryGetPositionResponse)

(defmethod berry_pkg::BerryGetPositionRequest
  (:response () (instance berry_pkg::BerryGetPositionResponse :init)))

(setf (get berry_pkg::BerryGetPositionRequest :md5sum-) "b38e30458a843d420744e165c938e395")
(setf (get berry_pkg::BerryGetPositionRequest :datatype-) "berry_pkg/BerryGetPositionRequest")
(setf (get berry_pkg::BerryGetPositionRequest :definition-)
      "uint8 id1
uint8 id2
uint8 id3
uint8 id4
---
int32 position1
int32 position2
int32 position3
int32 position4
")

(setf (get berry_pkg::BerryGetPositionResponse :md5sum-) "b38e30458a843d420744e165c938e395")
(setf (get berry_pkg::BerryGetPositionResponse :datatype-) "berry_pkg/BerryGetPositionResponse")
(setf (get berry_pkg::BerryGetPositionResponse :definition-)
      "uint8 id1
uint8 id2
uint8 id3
uint8 id4
---
int32 position1
int32 position2
int32 position3
int32 position4
")



(provide :berry_pkg/BerryGetPosition "b38e30458a843d420744e165c938e395")

