; Auto-generated. Do not edit!


(cl:in-package berry_pkg-msg)


;//! \htmlinclude BerrySetPosition.msg.html

(cl:defclass <BerrySetPosition> (roslisp-msg-protocol:ros-message)
  ((id1
    :reader id1
    :initarg :id1
    :type cl:fixnum
    :initform 0)
   (id2
    :reader id2
    :initarg :id2
    :type cl:fixnum
    :initform 0)
   (id3
    :reader id3
    :initarg :id3
    :type cl:fixnum
    :initform 0)
   (id4
    :reader id4
    :initarg :id4
    :type cl:fixnum
    :initform 0)
   (position1
    :reader position1
    :initarg :position1
    :type cl:integer
    :initform 0)
   (position2
    :reader position2
    :initarg :position2
    :type cl:integer
    :initform 0)
   (position3
    :reader position3
    :initarg :position3
    :type cl:integer
    :initform 0)
   (position4
    :reader position4
    :initarg :position4
    :type cl:integer
    :initform 0))
)

(cl:defclass BerrySetPosition (<BerrySetPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BerrySetPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BerrySetPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name berry_pkg-msg:<BerrySetPosition> is deprecated: use berry_pkg-msg:BerrySetPosition instead.")))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <BerrySetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:id1-val is deprecated.  Use berry_pkg-msg:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'id2-val :lambda-list '(m))
(cl:defmethod id2-val ((m <BerrySetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:id2-val is deprecated.  Use berry_pkg-msg:id2 instead.")
  (id2 m))

(cl:ensure-generic-function 'id3-val :lambda-list '(m))
(cl:defmethod id3-val ((m <BerrySetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:id3-val is deprecated.  Use berry_pkg-msg:id3 instead.")
  (id3 m))

(cl:ensure-generic-function 'id4-val :lambda-list '(m))
(cl:defmethod id4-val ((m <BerrySetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:id4-val is deprecated.  Use berry_pkg-msg:id4 instead.")
  (id4 m))

(cl:ensure-generic-function 'position1-val :lambda-list '(m))
(cl:defmethod position1-val ((m <BerrySetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:position1-val is deprecated.  Use berry_pkg-msg:position1 instead.")
  (position1 m))

(cl:ensure-generic-function 'position2-val :lambda-list '(m))
(cl:defmethod position2-val ((m <BerrySetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:position2-val is deprecated.  Use berry_pkg-msg:position2 instead.")
  (position2 m))

(cl:ensure-generic-function 'position3-val :lambda-list '(m))
(cl:defmethod position3-val ((m <BerrySetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:position3-val is deprecated.  Use berry_pkg-msg:position3 instead.")
  (position3 m))

(cl:ensure-generic-function 'position4-val :lambda-list '(m))
(cl:defmethod position4-val ((m <BerrySetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-msg:position4-val is deprecated.  Use berry_pkg-msg:position4 instead.")
  (position4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BerrySetPosition>) ostream)
  "Serializes a message object of type '<BerrySetPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id4)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'position1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BerrySetPosition>) istream)
  "Deserializes a message object of type '<BerrySetPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id4)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BerrySetPosition>)))
  "Returns string type for a message object of type '<BerrySetPosition>"
  "berry_pkg/BerrySetPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BerrySetPosition)))
  "Returns string type for a message object of type 'BerrySetPosition"
  "berry_pkg/BerrySetPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BerrySetPosition>)))
  "Returns md5sum for a message object of type '<BerrySetPosition>"
  "82bc2dcea1e1a05f1ca9365af7aea68f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BerrySetPosition)))
  "Returns md5sum for a message object of type 'BerrySetPosition"
  "82bc2dcea1e1a05f1ca9365af7aea68f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BerrySetPosition>)))
  "Returns full string definition for message of type '<BerrySetPosition>"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%uint8 id3~%uint8 id4~%int32 position1~%int32 position2~%int32 position3~%int32 position4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BerrySetPosition)))
  "Returns full string definition for message of type 'BerrySetPosition"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%uint8 id3~%uint8 id4~%int32 position1~%int32 position2~%int32 position3~%int32 position4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BerrySetPosition>))
  (cl:+ 0
     1
     1
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BerrySetPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'BerrySetPosition
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':id2 (id2 msg))
    (cl:cons ':id3 (id3 msg))
    (cl:cons ':id4 (id4 msg))
    (cl:cons ':position1 (position1 msg))
    (cl:cons ':position2 (position2 msg))
    (cl:cons ':position3 (position3 msg))
    (cl:cons ':position4 (position4 msg))
))
