; Auto-generated. Do not edit!


(cl:in-package berry_pkg-msg)


;//! \htmlinclude BerrySetAngle.msg.html

(cl:defclass <BerrySetAngle> (roslisp-msg-protocol:ros-message)
  ((th1
    :reader th1
    :initarg :th1
    :type cl:float
    :initform 0.0)
   (th2
    :reader th2
    :initarg :th2
    :type cl:float
    :initform 0.0)
   (th3
    :reader th3
    :initarg :th3
    :type cl:float
    :initform 0.0)
   (th4
    :reader th4
    :initarg :th4
    :type cl:float
    :initform 0.0)
   (angle1
    :reader angle1
    :initarg :angle1
    :type cl:float
    :initform 0.0)
   (angle2
    :reader angle2
    :initarg :angle2
    :type cl:float
    :initform 0.0)
   (angle3
    :reader angle3
    :initarg :angle3
    :type cl:float
    :initform 0.0)
   (angle4
    :reader angle4
    :initarg :angle4
    :type cl:float
    :initform 0.0))
)

(cl:defclass BerrySetAngle (<BerrySetAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BerrySetAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BerrySetAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name berry_pkg-msg:<BerrySetAngle> is deprecated: use berry_pkg-msg:BerrySetAngle instead.")))

(cl:ensure-generic-function 'th1-val :lambda-list '(m))
(cl:defmethod th1-val ((m <BerrySetAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:th1-val is deprecated.  Use berry_pkg-msg:th1 instead.")
  (th1 m))

(cl:ensure-generic-function 'th2-val :lambda-list '(m))
(cl:defmethod th2-val ((m <BerrySetAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:th2-val is deprecated.  Use berry_pkg-msg:th2 instead.")
  (th2 m))

(cl:ensure-generic-function 'th3-val :lambda-list '(m))
(cl:defmethod th3-val ((m <BerrySetAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:th3-val is deprecated.  Use berry_pkg-msg:th3 instead.")
  (th3 m))

(cl:ensure-generic-function 'th4-val :lambda-list '(m))
(cl:defmethod th4-val ((m <BerrySetAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:th4-val is deprecated.  Use berry_pkg-msg:th4 instead.")
  (th4 m))

(cl:ensure-generic-function 'angle1-val :lambda-list '(m))
(cl:defmethod angle1-val ((m <BerrySetAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:angle1-val is deprecated.  Use berry_pkg-msg:angle1 instead.")
  (angle1 m))

(cl:ensure-generic-function 'angle2-val :lambda-list '(m))
(cl:defmethod angle2-val ((m <BerrySetAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:angle2-val is deprecated.  Use berry_pkg-msg:angle2 instead.")
  (angle2 m))

(cl:ensure-generic-function 'angle3-val :lambda-list '(m))
(cl:defmethod angle3-val ((m <BerrySetAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:angle3-val is deprecated.  Use berry_pkg-msg:angle3 instead.")
  (angle3 m))

(cl:ensure-generic-function 'angle4-val :lambda-list '(m))
(cl:defmethod angle4-val ((m <BerrySetAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:angle4-val is deprecated.  Use berry_pkg-msg:angle4 instead.")
  (angle4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BerrySetAngle>) ostream)
  "Serializes a message object of type '<BerrySetAngle>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'th1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'th2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'th3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'th4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BerrySetAngle>) istream)
  "Deserializes a message object of type '<BerrySetAngle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BerrySetAngle>)))
  "Returns string type for a message object of type '<BerrySetAngle>"
  "berry_pkg/BerrySetAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BerrySetAngle)))
  "Returns string type for a message object of type 'BerrySetAngle"
  "berry_pkg/BerrySetAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BerrySetAngle>)))
  "Returns md5sum for a message object of type '<BerrySetAngle>"
  "97b3b82c09f87a6730ecaae04f0b974e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BerrySetAngle)))
  "Returns md5sum for a message object of type 'BerrySetAngle"
  "97b3b82c09f87a6730ecaae04f0b974e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BerrySetAngle>)))
  "Returns full string definition for message of type '<BerrySetAngle>"
  (cl:format cl:nil "float32 th1~%float32 th2~%float32 th3~%float32 th4~%float32 angle1~%float32 angle2~%float32 angle3~%float32 angle4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BerrySetAngle)))
  "Returns full string definition for message of type 'BerrySetAngle"
  (cl:format cl:nil "float32 th1~%float32 th2~%float32 th3~%float32 th4~%float32 angle1~%float32 angle2~%float32 angle3~%float32 angle4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BerrySetAngle>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BerrySetAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'BerrySetAngle
    (cl:cons ':th1 (th1 msg))
    (cl:cons ':th2 (th2 msg))
    (cl:cons ':th3 (th3 msg))
    (cl:cons ':th4 (th4 msg))
    (cl:cons ':angle1 (angle1 msg))
    (cl:cons ':angle2 (angle2 msg))
    (cl:cons ':angle3 (angle3 msg))
    (cl:cons ':angle4 (angle4 msg))
))
