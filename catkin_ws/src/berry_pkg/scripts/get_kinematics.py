#!/usr/bin/env python
#-*- coding:utf-8 -*-

import rospy				# ROS 라이브러리
from math import cos,sin, pi
from berry_pkg.msg import *
from berry_pkg.srv import *
    # 서브스크라이브하는 first_msg.msg 파일과, 퍼블리시하는 BerryKine.msg 파일 불러오기


class Kine:
    def __init__(self):
        self.th1 = 0.0
        self.th2 = 0.0
        self.th3 = 0.0
        self.th4 = 0.0
        self.l1 = 180.0
        self.l2 = 180.0
        self.d1 = 193.15
        self.d2 = -12.68
        self.d3 = -99.48

        rospy.Subscriber("/berry_angle_msg", BerrySetAngle, self.berry_angle_callback) 
        # pose_kine :: cartesian cordination , end effector orientation 
        self.srv = rospy.Service("/pose_kine", BerryKine, self.cal_kine_callback)


        
    def berry_angle_callback(self,data):
        self.th1= data.angle1
        self.th2= data.angle2
        self.th3= data.angle3
        self.th4= data.angle4

        rospy.loginfo("th1,th2,th3,th4: %f, %f, %f, %f", self.th1,self.th2,self.th3,self.th4)
    
    def cal_kine_callback(self,req):  
        x = self.l1*cos(self.th1) + self.l2*cos(self.th2)
        y = self.l1*sin(self.th1) + self.l2*sin(self.th2)
        z = (8*self.th3-8*self.th4)/pi +self.d1+self.d2+self.d3
        a = (self.th2+self.th4)%(2*pi) 
        print(x,y,z,a)

        return x,y,z,a
        
def main():
    rospy.init_node("get_kinematics",anonymous=False)
    rate = rospy.Rate(1)

    kine = Kine()
    print("Ready to return")
    rospy.spin()

    
if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
