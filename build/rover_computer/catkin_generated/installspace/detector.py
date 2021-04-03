#!/usr/bin/env python2
import rospy
from geometry_msgs import Vector3
import random

def detect():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('detector', anonymous=True)
    rate = rospy.Rate(1) # 1hz
    while not rospy.is_shutdown():
    	point = Vector3()
    	point.x = random.randint(-100, 100)
    	point.y = random.randint(-100, 100)
    	point.z = random.randint(-100, 100)
        rospy.loginfo(f"Publishing: {point.x}, {point.y}, {point.z}")
        pub.publish(point)
        rate.sleep()

if __name__ == '__main__':
    try:
        detect()
    except rospy.ROSInterruptException:
        pass