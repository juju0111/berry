;; Auto-generated. Do not edit!


(when (boundp 'berry_pkg::BerryPos)
  (if (not (find-package "BERRY_PKG"))
    (make-package "BERRY_PKG"))
  (shadow 'BerryPos (find-package "BERRY_PKG")))
(unless (find-package "BERRY_PKG::BERRYPOS")
  (make-package "BERRY_PKG::BERRYPOS"))

(in-package "ROS")
;;//! \htmlinclude BerryPos.msg.html


(defclass berry_pkg::BerryPos
  :super ros::object
  :slots (_x _y _z _a ))

(defmethod berry_pkg::BerryPos
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

(setf (get berry_pkg::BerryPos :md5sum-) "048816fafbfc26a9b1dace8fa24075f0")
(setf (get berry_pkg::BerryPos :datatype-) "berry_pkg/BerryPos")
(setf (get berry_pkg::BerryPos :definition-)
      "float32 x
float32 y
float32 z
float32 a
")



(provide :berry_pkg/BerryPos "048816fafbfc26a9b1dace8fa24075f0")


