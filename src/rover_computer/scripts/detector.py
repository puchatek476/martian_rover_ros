#!/usr/bin/env python
import rospy
import random
from geometry_msgs.msg import Vector3


def detect():
    pub = rospy.Publisher('detecting', Vector3, queue_size=10)
    rospy.init_node('detector', anonymous=True)
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        point = Vector3(random.randint(-100, 100), random.randint(-100, 100), random.randint(-100, 100))
        pub.publish(point)
        rate.sleep()


if __name__ == "__main__":
    try:
        detect()
    except rospy.ROSInterruptException:
        pass
