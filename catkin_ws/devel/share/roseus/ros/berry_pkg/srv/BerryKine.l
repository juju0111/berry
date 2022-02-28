;; Auto-generated. Do not edit!


(when (boundp 'berry_pkg::BerryKine)
  (if (not (find-package "BERRY_PKG"))
    (make-package "BERRY_PKG"))
  (shadow 'BerryKine (find-package "BERRY_PKG")))
(unless (find-package "BERRY_PKG::BERRYKINE")
  (make-package "BERRY_PKG::BERRYKINE"))
(unless (find-package "BERRY_PKG::BERRYKINEREQUEST")
  (make-package "BERRY_PKG::BERRYKINEREQUEST"))
(unless (find-package "BERRY_PKG::BERRYKINERESPONSE")
  (make-package "BERRY_PKG::BERRYKINERESPONSE"))

(in-package "ROS")





(defclass berry_pkg::BerryKineRequest
  :super ros::object
  :slots (_th1 _th2 _th3 _th4 ))

(defmethod berry_pkg::BerryKineRequest
  (:init
   (&key
    ((:th1 __th1) 0.0)
    ((:th2 __th2) 0.0)
    ((:th3 __th3) 0.0)
    ((:th4 __th4) 0.0)
    )
   (send-super :init)
   (setq _th1 (float __th1))
   (setq _th2 (float __th2))
   (setq _th3 (float __th3))
   (setq _th4 (float __th4))
   self)
  (:th1
   (&optional __th1)
   (if __th1 (setq _th1 __th1)) _th1)
  (:th2
   (&optional __th2)
   (if __th2 (setq _th2 __th2)) _th2)
  (:th3
   (&optional __th3)
   (if __th3 (setq _th3 __th3)) _th3)
  (:th4
   (&optional __th4)
   (if __th4 (setq _th4 __th4)) _th4)
  (:serialization-length
   ()
   (+
    ;; float32 _th1
    4
    ;; float32 _th2
    4
    ;; float32 _th3
    4
    ;; float32 _th4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _th1
       (sys::poke _th1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _th2
       (sys::poke _th2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _th3
       (sys::poke _th3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _th4
       (sys::poke _th4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _th1
     (setq _th1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _th2
     (setq _th2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _th3
     (setq _th3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _th4
     (setq _th4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass berry_pkg::BerryKineResponse
  :super ros::object
  :slots (_x _y _z _a ))

(defmethod berry_pkg::BerryKineResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:a __a) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _a (float __a))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass berry_pkg::BerryKine
  :super ros::object
  :slots ())

(setf (get berry_pkg::BerryKine :md5sum-) "b7b8c1b034c1b069bff5d6c113f05355")
(setf (get berry_pkg::BerryKine :datatype-) "berry_pkg/BerryKine")
(setf (get berry_pkg::BerryKine :request) berry_pkg::BerryKineRequest)
(setf (get berry_pkg::BerryKine :response) berry_pkg::BerryKineResponse)

(defmethod berry_pkg::BerryKineRequest
  (:response () (instance berry_pkg::BerryKineResponse :init)))

(setf (get berry_pkg::BerryKineRequest :md5sum-) "b7b8c1b034c1b069bff5d6c113f05355")
(setf (get berry_pkg::BerryKineRequest :datatype-) "berry_pkg/BerryKineRequest")
(setf (get berry_pkg::BerryKineRequest :definition-)
      "float32 th1
float32 th2
float32 th3
float32 th4
---
float32 x
float32 y
float32 z
float32 a
")

(setf (get berry_pkg::BerryKineResponse :md5sum-) "b7b8c1b034c1b069bff5d6c113f05355")
(setf (get berry_pkg::BerryKineResponse :datatype-) "berry_pkg/BerryKineResponse")
(setf (get berry_pkg::BerryKineResponse :definition-)
      "float32 th1
float32 th2
float32 th3
float32 th4
---
float32 x
float32 y
float32 z
float32 a
")



(provide :berry_pkg/BerryKine "b7b8c1b034c1b069bff5d6c113f05355")


