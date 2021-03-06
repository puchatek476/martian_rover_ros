#!/usr/bin/env python2
from __future__ import print_function
import rospy
import sys
import math
from geometry_msgs.msg import Vector3
from std_msgs.msg import Float64
from rover_computer.srv import *

def detector_callback(data):
    angle_rotation(data)
    motor_move(data)


def angle_rotation(data):
    rospy.wait_for_service('wheel_turn_drivers')
    try:
        angle = rospy.ServiceProxy('wheel_turn_drivers', angle_to_rot)

        result = angle(data)

        rospy.loginfo('Rotation: %s'%result.angleToRot)

    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)


def motor_move(data):
    vec_subscr_info = " I got vector %s %s %s" % (data.x, data.y, data.z)
    #rospy.loginfo(rospy.get_caller_id() + vec_subscr_info)

    vec_size = vector3_length(data)

    # publishing vector size
    pub = rospy.Publisher("travel_distance", Float64, queue_size=10)
    vec_publ_info = " Publishing vector size: %s"% vec_size
    #rospy.loginfo(vec_publ_info)
    pub.publish(vec_size)


def listener():
    rospy.init_node("main_computer", anonymous=True)
    rospy.Subscriber("detecting", Vector3, detector_callback)
    rospy.spin()


def vector3_length(vector):
    return math.sqrt(vector.x**2 + vector.y**2 + vector.z**2)


if __name__ == '__main__':
    listener()
