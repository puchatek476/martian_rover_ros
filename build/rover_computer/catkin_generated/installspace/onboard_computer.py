#!/usr/bin/env python2
from __future__ import print_function
from geometry_msgs.msg import Vector3
from std_msgs.msg import Float64
from rover_computer.srv import *
import rospy
import sys
import math


def detector_callback(data):
    angle_rotation(data)
    notify_engines(data)


def angle_rotation(data):
    rospy.wait_for_service('angle_to_rotate')
    try:
        angle_server = rospy.ServiceProxy('angle_to_rotate', angle_to_rot)
        result = angle_server(data)
        rospy.loginfo('Angle difference: %s' % result.angle)
    except rospy.ServiceException as e:
        print('Service call failed: %s' % e)


def notify_engines(data):
    vec_subscr_info = ' I got vector %s %s %s' % (data.x, data.y, data.z)
    # rospy.loginfo(rospy.get_caller_id() + vec_subscr_info)

    vector_length = vector3_length(data)

    # publishing vector size
    pub = rospy.Publisher('vector_length', Float64, queue_size=10)

    vec_publ_info = ' Publishing vector size: %s' % vector_length
    # rospy.loginfo(vec_publ_info)

    pub.publish(vector_length)


def listener():
    rospy.init_node('onboard_computer', anonymous=True)
    rospy.Subscriber('detecting', Vector3, detector_callback)
    rospy.spin()


def vector3_length(vector):
    return math.sqrt(vector.x**2 + vector.y**2 + vector.z**2)


if __name__ == '__main__':
    listener()
