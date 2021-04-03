#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Vector3
import random

def detect():
    pub = rospy.Publisher("laser_dots", Vector3, queue_size=10)
    rospy.init_node("detector", anonymous=True)
    rate = rospy.Rate(1) # 1hz
    while not rospy.is_shutdown():
    	point = Vector3()
    	point.x = random.randint(-100, 100)
    	point.y = random.randint(-100, 100)
    	point.z = random.randint(-100, 100)
    	vectro_info = "Publishing: %s %s %s" % (point.x, point.y, point.z)
        rospy.loginfo(vectro_info)
        pub.publish(point)
        rate.sleep()

if __name__ == "__main__":
    try:
        detect()
    except rospy.ROSInterruptException:
        pass