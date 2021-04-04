; Auto-generated. Do not edit!


(cl:in-package rover_computer-srv)


;//! \htmlinclude angle_to_rot-request.msg.html

(cl:defclass <angle_to_rot-request> (roslisp-msg-protocol:ros-message)
  ((vec
    :reader vec
    :initarg :vec
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass angle_to_rot-request (<angle_to_rot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angle_to_rot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angle_to_rot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_computer-srv:<angle_to_rot-request> is deprecated: use rover_computer-srv:angle_to_rot-request instead.")))

(cl:ensure-generic-function 'vec-val :lambda-list '(m))
(cl:defmethod vec-val ((m <angle_to_rot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_computer-srv:vec-val is deprecated.  Use rover_computer-srv:vec instead.")
  (vec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angle_to_rot-request>) ostream)
  "Serializes a message object of type '<angle_to_rot-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vec) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angle_to_rot-request>) istream)
  "Deserializes a message object of type '<angle_to_rot-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vec) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angle_to_rot-request>)))
  "Returns string type for a service object of type '<angle_to_rot-request>"
  "rover_computer/angle_to_rotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angle_to_rot-request)))
  "Returns string type for a service object of type 'angle_to_rot-request"
  "rover_computer/angle_to_rotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angle_to_rot-request>)))
  "Returns md5sum for a message object of type '<angle_to_rot-request>"
  "c9b6a830186d1c75fbda1fb5dd9334cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angle_to_rot-request)))
  "Returns md5sum for a message object of type 'angle_to_rot-request"
  "c9b6a830186d1c75fbda1fb5dd9334cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angle_to_rot-request>)))
  "Returns full string definition for message of type '<angle_to_rot-request>"
  (cl:format cl:nil "geometry_msgs/Vector3 vec~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angle_to_rot-request)))
  "Returns full string definition for message of type 'angle_to_rot-request"
  (cl:format cl:nil "geometry_msgs/Vector3 vec~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angle_to_rot-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vec))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angle_to_rot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'angle_to_rot-request
    (cl:cons ':vec (vec msg))
))
;//! \htmlinclude angle_to_rot-response.msg.html

(cl:defclass <angle_to_rot-response> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass angle_to_rot-response (<angle_to_rot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angle_to_rot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angle_to_rot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_computer-srv:<angle_to_rot-response> is deprecated: use rover_computer-srv:angle_to_rot-response instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <angle_to_rot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_computer-srv:angle-val is deprecated.  Use rover_computer-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angle_to_rot-response>) ostream)
  "Serializes a message object of type '<angle_to_rot-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angle_to_rot-response>) istream)
  "Deserializes a message object of type '<angle_to_rot-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angle_to_rot-response>)))
  "Returns string type for a service object of type '<angle_to_rot-response>"
  "rover_computer/angle_to_rotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angle_to_rot-response)))
  "Returns string type for a service object of type 'angle_to_rot-response"
  "rover_computer/angle_to_rotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angle_to_rot-response>)))
  "Returns md5sum for a message object of type '<angle_to_rot-response>"
  "c9b6a830186d1c75fbda1fb5dd9334cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angle_to_rot-response)))
  "Returns md5sum for a message object of type 'angle_to_rot-response"
  "c9b6a830186d1c75fbda1fb5dd9334cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angle_to_rot-response>)))
  "Returns full string definition for message of type '<angle_to_rot-response>"
  (cl:format cl:nil "float64 angle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angle_to_rot-response)))
  "Returns full string definition for message of type 'angle_to_rot-response"
  (cl:format cl:nil "float64 angle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angle_to_rot-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angle_to_rot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'angle_to_rot-response
    (cl:cons ':angle (angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'angle_to_rot)))
  'angle_to_rot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'angle_to_rot)))
  'angle_to_rot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angle_to_rot)))
  "Returns string type for a service object of type '<angle_to_rot>"
  "rover_computer/angle_to_rot")