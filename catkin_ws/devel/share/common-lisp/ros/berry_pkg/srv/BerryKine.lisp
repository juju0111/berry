; Auto-generated. Do not edit!


(cl:in-package berry_pkg-srv)


;//! \htmlinclude BerryKine-request.msg.html

(cl:defclass <BerryKine-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass BerryKine-request (<BerryKine-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BerryKine-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BerryKine-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name berry_pkg-srv:<BerryKine-request> is deprecated: use berry_pkg-srv:BerryKine-request instead.")))

(cl:ensure-generic-function 'th1-val :lambda-list '(m))
(cl:defmethod th1-val ((m <BerryKine-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:th1-val is deprecated.  Use berry_pkg-srv:th1 instead.")
  (th1 m))

(cl:ensure-generic-function 'th2-val :lambda-list '(m))
(cl:defmethod th2-val ((m <BerryKine-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:th2-val is deprecated.  Use berry_pkg-srv:th2 instead.")
  (th2 m))

(cl:ensure-generic-function 'th3-val :lambda-list '(m))
(cl:defmethod th3-val ((m <BerryKine-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:th3-val is deprecated.  Use berry_pkg-srv:th3 instead.")
  (th3 m))

(cl:ensure-generic-function 'th4-val :lambda-list '(m))
(cl:defmethod th4-val ((m <BerryKine-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:th4-val is deprecated.  Use berry_pkg-srv:th4 instead.")
  (th4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BerryKine-request>) ostream)
  "Serializes a message object of type '<BerryKine-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BerryKine-request>) istream)
  "Deserializes a message object of type '<BerryKine-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BerryKine-request>)))
  "Returns string type for a service object of type '<BerryKine-request>"
  "berry_pkg/BerryKineRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BerryKine-request)))
  "Returns string type for a service object of type 'BerryKine-request"
  "berry_pkg/BerryKineRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BerryKine-request>)))
  "Returns md5sum for a message object of type '<BerryKine-request>"
  "b7b8c1b034c1b069bff5d6c113f05355")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BerryKine-request)))
  "Returns md5sum for a message object of type 'BerryKine-request"
  "b7b8c1b034c1b069bff5d6c113f05355")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BerryKine-request>)))
  "Returns full string definition for message of type '<BerryKine-request>"
  (cl:format cl:nil "float32 th1~%float32 th2~%float32 th3~%float32 th4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BerryKine-request)))
  "Returns full string definition for message of type 'BerryKine-request"
  (cl:format cl:nil "float32 th1~%float32 th2~%float32 th3~%float32 th4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BerryKine-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BerryKine-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BerryKine-request
    (cl:cons ':th1 (th1 msg))
    (cl:cons ':th2 (th2 msg))
    (cl:cons ':th3 (th3 msg))
    (cl:cons ':th4 (th4 msg))
))
;//! \htmlinclude BerryKine-response.msg.html

(cl:defclass <BerryKine-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0))
)

(cl:defclass BerryKine-response (<BerryKine-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BerryKine-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BerryKine-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name berry_pkg-srv:<BerryKine-response> is deprecated: use berry_pkg-srv:BerryKine-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <BerryKine-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:x-val is deprecated.  Use berry_pkg-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <BerryKine-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:y-val is deprecated.  Use berry_pkg-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <BerryKine-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:z-val is deprecated.  Use berry_pkg-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <BerryKine-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:a-val is deprecated.  Use berry_pkg-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BerryKine-response>) ostream)
  "Serializes a message object of type '<BerryKine-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BerryKine-response>) istream)
  "Deserializes a message object of type '<BerryKine-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BerryKine-response>)))
  "Returns string type for a service object of type '<BerryKine-response>"
  "berry_pkg/BerryKineResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BerryKine-response)))
  "Returns string type for a service object of type 'BerryKine-response"
  "berry_pkg/BerryKineResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BerryKine-response>)))
  "Returns md5sum for a message object of type '<BerryKine-response>"
  "b7b8c1b034c1b069bff5d6c113f05355")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BerryKine-response)))
  "Returns md5sum for a message object of type 'BerryKine-response"
  "b7b8c1b034c1b069bff5d6c113f05355")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BerryKine-response>)))
  "Returns full string definition for message of type '<BerryKine-response>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BerryKine-response)))
  "Returns full string definition for message of type 'BerryKine-response"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BerryKine-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BerryKine-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BerryKine-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':a (a msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BerryKine)))
  'BerryKine-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BerryKine)))
  'BerryKine-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BerryKine)))
  "Returns string type for a service object of type '<BerryKine>"
  "berry_pkg/BerryKine")