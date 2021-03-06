#!/usr/bin/env python2

from __future__ import print_function
from geometry_msgs.msg import Vector3
from rover_computer.srv import *
import rospy
import math


last_angle = 0  # initial posistion of rover is 0 rad


def vector3_length(vector):
    return math.sqrt(vector.x ** 2 + vector.y ** 2 + vector.z ** 2)


def vector_ox_angle(vector):
    """
    return angle in radians between vector and OX axis
    """
    return math.acos(vector.x / vector3_length(vector))


def calculate_angle_diff(req):
    global last_angle

    # vector projected to XY plane
    projected_vec = Vector3(req.vec.x, req.vec.y, 0)

    angle_diff = vector_ox_angle(projected_vec) - last_angle
    last_angle = vector_ox_angle(projected_vec)

    return angle_to_rotResponse(angle_diff)


def turn_drivers_server():
    rospy.init_node('turn_drivers')
    server = rospy.Service('angle_to_rotate', angle_to_rot, calculate_angle_diff)
    rospy.spin()


if __name__ == '__main__':
    turn_drivers_server()
