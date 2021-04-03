#!/usr/bin/env python
import rospy
import math
from geometry_msgs.msg import Vector3
from std_msgs.msg import Float64


def compute(data):
    #subscribing 3d vector info
    vec_subscr_info = " I got vector %s %s %s" % (data.x, data.y, data.z)
    rospy.loginfo(rospy.get_caller_id() + vec_subscr_info)

    vec_size = vector3_length(data)

    #publishing vector size
    pub = rospy.Publisher("travel_distance", Float64, queue_size=10)
    vec_publ_info = " Publishing vector size: %s"% vec_size
    rospy.loginfo(vec_publ_info)
    pub.publish(vec_size)


def listener():
    rospy.init_node("computer", anonymous=True)
    rospy.Subscriber("laser_dots", Vector3, compute)

    rospy.spin()


def vector3_length(vector):
    return math.sqrt(vector.x**2 + vector.y**2 + vector.z**2)


if __name__ == '__main__':
    listener()
