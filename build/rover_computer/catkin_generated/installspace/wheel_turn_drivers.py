#!/usr/bin/env python2

from __future__ import print_function
from geometry_msgs.msg import Vector3
from rover_computer.srv import *
import rospy
import math

last_angle = 0


def vector3_length(vector):
    return math.sqrt(vector.x**2 + vector.y**2 + vector.z**2)


def vector_ox_angle(vector):
	"""
	:param vec: 3d vector of integers
	:return: angle between vec and X axis
	"""
	return math.acos(vector.x/vector3_length(vector))


def calculate_angle_diff(req):
	global last_angle

	# vector projected to XY plane
	projected_vec = Vector3(req.vec.x, req.vec.y, 0)

	angle_diff = vector_ox_angle(projected_vec) - last_angle

	#rospy.loginfo("Last angle: " + str(last_angle))
	#rospy.loginfo("New angle: " + str(vector_ox_angle(projected_vec)))
	#rospy.loginfo("Angle difference: " + str(angle_diff))
	last_angle = vector_ox_angle(projected_vec)

	return angle_to_rotResponse(angle_diff)

def add_two_ints_server():
    rospy.init_node('wheel_turn_drivers')
    s = rospy.Service('wheel_turn_drivers', angle_to_rot, calculate_angle_diff)
    print("Ready to calculate angle diff.")
    rospy.spin()


if __name__ == "__main__":
    add_two_ints_server()
