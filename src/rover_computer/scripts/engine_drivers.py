#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64


def drive_distance(data):
    rospy.loginfo('Vector\'s length: %s', data.data)


def listener():
    rospy.init_node('engine_drivers', anonymous=True)
    rospy.Subscriber('vector_length', Float64, drive_distance)
    rospy.spin()


if __name__ == '__main__':
    listener()
