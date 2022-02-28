;; Auto-generated. Do not edit!


(when (boundp 'berry_pkg::BerrySetAngle)
  (if (not (find-package "BERRY_PKG"))
    (make-package "BERRY_PKG"))
  (shadow 'BerrySetAngle (find-package "BERRY_PKG")))
(unless (find-package "BERRY_PKG::BERRYSETANGLE")
  (make-package "BERRY_PKG::BERRYSETANGLE"))

(in-package "ROS")
;;//! \htmlinclude BerrySetAngle.msg.html


(defclass berry_pkg::BerrySetAngle
  :super ros::object
  :slots (_th1 _th2 _th3 _th4 _angle1 _angle2 _angle3 _angle4 ))

(defmethod berry_pkg::BerrySetAngle
  (:init
   (&key
    ((:th1 __th1) 0.0)
    ((:th2 __th2) 0.0)
    ((:th3 __th3) 0.0)
    ((:th4 __th4) 0.0)
    ((:angle1 __angle1) 0.0)
    ((:angle2 __angle2) 0.0)
    ((:angle3 __angle3) 0.0)
    ((:angle4 __angle4) 0.0)
    )
   (send-super :init)
   (setq _th1 (float __th1))
   (setq _th2 (float __th2))
   (setq _th3 (float __th3))
   (setq _th4 (float __th4))
   (setq _angle1 (float __angle1))
   (setq _angle2 (float __angle2))
   (setq _angle3 (float __angle3))
   (setq _angle4 (float __angle4))
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
  (:angle1
   (&optional __angle1)
   (if __angle1 (setq _angle1 __angle1)) _angle1)
  (:angle2
   (&optional __angle2)
   (if __angle2 (setq _angle2 __angle2)) _angle2)
  (:angle3
   (&optional __angle3)
   (if __angle3 (setq _angle3 __angle3)) _angle3)
  (:angle4
   (&optional __angle4)
   (if __angle4 (setq _angle4 __angle4)) _angle4)
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
    ;; float32 _angle1
    4
    ;; float32 _angle2
    4
    ;; float32 _angle3
    4
    ;; float32 _angle4
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
     ;; float32 _angle1
       (sys::poke _angle1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle2
       (sys::poke _angle2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle3
       (sys::poke _angle3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle4
       (sys::poke _angle4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _angle1
     (setq _angle1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle2
     (setq _angle2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle3
     (setq _angle3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle4
     (setq _angle4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get berry_pkg::BerrySetAngle :md5sum-) "97b3b82c09f87a6730ecaae04f0b974e")
(setf (get berry_pkg::BerrySetAngle :datatype-) "berry_pkg/BerrySetAngle")
(setf (get berry_pkg::BerrySetAngle :definition-)
      "float32 th1
float32 th2
float32 th3
float32 th4
float32 angle1
float32 angle2
float32 angle3
float32 angle4

")



(provide :berry_pkg/BerrySetAngle "97b3b82c09f87a6730ecaae04f0b974e")


