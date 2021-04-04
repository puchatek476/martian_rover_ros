;; Auto-generated. Do not edit!


(when (boundp 'rover_computer::angle_to_rot)
  (if (not (find-package "ROVER_COMPUTER"))
    (make-package "ROVER_COMPUTER"))
  (shadow 'angle_to_rot (find-package "ROVER_COMPUTER")))
(unless (find-package "ROVER_COMPUTER::ANGLE_TO_ROT")
  (make-package "ROVER_COMPUTER::ANGLE_TO_ROT"))
(unless (find-package "ROVER_COMPUTER::ANGLE_TO_ROTREQUEST")
  (make-package "ROVER_COMPUTER::ANGLE_TO_ROTREQUEST"))
(unless (find-package "ROVER_COMPUTER::ANGLE_TO_ROTRESPONSE")
  (make-package "ROVER_COMPUTER::ANGLE_TO_ROTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass rover_computer::angle_to_rotRequest
  :super ros::object
  :slots (_vec ))

(defmethod rover_computer::angle_to_rotRequest
  (:init
   (&key
    ((:vec __vec) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _vec __vec)
   self)
  (:vec
   (&rest __vec)
   (if (keywordp (car __vec))
       (send* _vec __vec)
     (progn
       (if __vec (setq _vec (car __vec)))
       _vec)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _vec
    (send _vec :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _vec
       (send _vec :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _vec
     (send _vec :deserialize buf ptr-) (incf ptr- (send _vec :serialization-length))
   ;;
   self)
  )

(defclass rover_computer::angle_to_rotResponse
  :super ros::object
  :slots (_angle ))

(defmethod rover_computer::angle_to_rotResponse
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rover_computer::angle_to_rot
  :super ros::object
  :slots ())

(setf (get rover_computer::angle_to_rot :md5sum-) "c9b6a830186d1c75fbda1fb5dd9334cf")
(setf (get rover_computer::angle_to_rot :datatype-) "rover_computer/angle_to_rot")
(setf (get rover_computer::angle_to_rot :request) rover_computer::angle_to_rotRequest)
(setf (get rover_computer::angle_to_rot :response) rover_computer::angle_to_rotResponse)

(defmethod rover_computer::angle_to_rotRequest
  (:response () (instance rover_computer::angle_to_rotResponse :init)))

(setf (get rover_computer::angle_to_rotRequest :md5sum-) "c9b6a830186d1c75fbda1fb5dd9334cf")
(setf (get rover_computer::angle_to_rotRequest :datatype-) "rover_computer/angle_to_rotRequest")
(setf (get rover_computer::angle_to_rotRequest :definition-)
      "geometry_msgs/Vector3 vec

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
float64 angle

")

(setf (get rover_computer::angle_to_rotResponse :md5sum-) "c9b6a830186d1c75fbda1fb5dd9334cf")
(setf (get rover_computer::angle_to_rotResponse :datatype-) "rover_computer/angle_to_rotResponse")
(setf (get rover_computer::angle_to_rotResponse :definition-)
      "geometry_msgs/Vector3 vec

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
float64 angle

")



(provide :rover_computer/angle_to_rot "c9b6a830186d1c75fbda1fb5dd9334cf")


