; Auto-generated. Do not edit!


(cl:in-package berry_pkg-srv)


;//! \htmlinclude BerryGetPosition-request.msg.html

(cl:defclass <BerryGetPosition-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0))
)

(cl:defclass BerryGetPosition-request (<BerryGetPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BerryGetPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BerryGetPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name berry_pkg-srv:<BerryGetPosition-request> is deprecated: use berry_pkg-srv:BerryGetPosition-request instead.")))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <BerryGetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:id1-val is deprecated.  Use berry_pkg-srv:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'id2-val :lambda-list '(m))
(cl:defmethod id2-val ((m <BerryGetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:id2-val is deprecated.  Use berry_pkg-srv:id2 instead.")
  (id2 m))

(cl:ensure-generic-function 'id3-val :lambda-list '(m))
(cl:defmethod id3-val ((m <BerryGetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:id3-val is deprecated.  Use berry_pkg-srv:id3 instead.")
  (id3 m))

(cl:ensure-generic-function 'id4-val :lambda-list '(m))
(cl:defmethod id4-val ((m <BerryGetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:id4-val is deprecated.  Use berry_pkg-srv:id4 instead.")
  (id4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BerryGetPosition-request>) ostream)
  "Serializes a message object of type '<BerryGetPosition-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id4)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BerryGetPosition-request>) istream)
  "Deserializes a message object of type '<BerryGetPosition-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id4)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BerryGetPosition-request>)))
  "Returns string type for a service object of type '<BerryGetPosition-request>"
  "berry_pkg/BerryGetPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BerryGetPosition-request)))
  "Returns string type for a service object of type 'BerryGetPosition-request"
  "berry_pkg/BerryGetPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BerryGetPosition-request>)))
  "Returns md5sum for a message object of type '<BerryGetPosition-request>"
  "b38e30458a843d420744e165c938e395")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BerryGetPosition-request)))
  "Returns md5sum for a message object of type 'BerryGetPosition-request"
  "b38e30458a843d420744e165c938e395")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BerryGetPosition-request>)))
  "Returns full string definition for message of type '<BerryGetPosition-request>"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%uint8 id3~%uint8 id4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BerryGetPosition-request)))
  "Returns full string definition for message of type 'BerryGetPosition-request"
  (cl:format cl:nil "uint8 id1~%uint8 id2~%uint8 id3~%uint8 id4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BerryGetPosition-request>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BerryGetPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BerryGetPosition-request
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':id2 (id2 msg))
    (cl:cons ':id3 (id3 msg))
    (cl:cons ':id4 (id4 msg))
))
;//! \htmlinclude BerryGetPosition-response.msg.html

(cl:defclass <BerryGetPosition-response> (roslisp-msg-protocol:ros-message)
  ((position1
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

(cl:defclass BerryGetPosition-response (<BerryGetPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BerryGetPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BerryGetPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name berry_pkg-srv:<BerryGetPosition-response> is deprecated: use berry_pkg-srv:BerryGetPosition-response instead.")))

(cl:ensure-generic-function 'position1-val :lambda-list '(m))
(cl:defmethod position1-val ((m <BerryGetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:position1-val is deprecated.  Use berry_pkg-srv:position1 instead.")
  (position1 m))

(cl:ensure-generic-function 'position2-val :lambda-list '(m))
(cl:defmethod position2-val ((m <BerryGetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:position2-val is deprecated.  Use berry_pkg-srv:position2 instead.")
  (position2 m))

(cl:ensure-generic-function 'position3-val :lambda-list '(m))
(cl:defmethod position3-val ((m <BerryGetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:position3-val is deprecated.  Use berry_pkg-srv:position3 instead.")
  (position3 m))

(cl:ensure-generic-function 'position4-val :lambda-list '(m))
(cl:defmethod position4-val ((m <BerryGetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader berry_pkg-srv:position4-val is deprecated.  Use berry_pkg-srv:position4 instead.")
  (position4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BerryGetPosition-response>) ostream)
  "Serializes a message object of type '<BerryGetPosition-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BerryGetPosition-response>) istream)
  "Deserializes a message object of type '<BerryGetPosition-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BerryGetPosition-response>)))
  "Returns string type for a service object of type '<BerryGetPosition-response>"
  "berry_pkg/BerryGetPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BerryGetPosition-response)))
  "Returns string type for a service object of type 'BerryGetPosition-response"
  "berry_pkg/BerryGetPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BerryGetPosition-response>)))
  "Returns md5sum for a message object of type '<BerryGetPosition-response>"
  "b38e30458a843d420744e165c938e395")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BerryGetPosition-response)))
  "Returns md5sum for a message object of type 'BerryGetPosition-response"
  "b38e30458a843d420744e165c938e395")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BerryGetPosition-response>)))
  "Returns full string definition for message of type '<BerryGetPosition-response>"
  (cl:format cl:nil "int32 position1~%int32 position2~%int32 position3~%int32 position4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BerryGetPosition-response)))
  "Returns full string definition for message of type 'BerryGetPosition-response"
  (cl:format cl:nil "int32 position1~%int32 position2~%int32 position3~%int32 position4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BerryGetPosition-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BerryGetPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BerryGetPosition-response
    (cl:cons ':position1 (position1 msg))
    (cl:cons ':position2 (position2 msg))
    (cl:cons ':position3 (position3 msg))
    (cl:cons ':position4 (position4 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BerryGetPosition)))
  'BerryGetPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BerryGetPosition)))
  'BerryGetPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BerryGetPosition)))
  "Returns string type for a service object of type '<BerryGetPosition>"
  "berry_pkg/BerryGetPosition")