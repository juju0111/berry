#!/usr/bin/env python

from __future__ import print_function

import threading

import roslib; 
import rospy
from dynamixel_sdk import *
from berry_pkg.msg import *
from berry_pkg.srv import *

import sys, select, termios, tty
DEVICENAME                  = '/dev/ttyUSB0'
PROTOCOL_VERSION            = 2.0

portHandler = PortHandler(DEVICENAME)
packetHandler = PacketHandler(PROTOCOL_VERSION)
ADDR_PRESENT_POSITION       = 132       # for X-series
LEN_PRESENT_POSITION        = 4         # Data Byte Length

groupSyncRead = GroupSyncRead(portHandler, packetHandler, ADDR_PRESENT_POSITION, LEN_PRESENT_POSITION)

msg = """
Reading from the keyboard  and Publishing to Twist!
---------------------------
Coordination Control : 

Control X,Y position:
    y  u  i
    h  j  k
    n  m  ,

Contril Z position:    
       r

       v

control Orientation:
    
    d     g     

CTRL-C to quit
"""

#move x,y
controls_pos = {
        'y':(1,1),
        'u':(1,0),
        'i':(1,-1),
        'h':(0,1),
        'j':(0,0),
        'k':(0,-1),
        'n':(-1,1),
        'm':(-1,0),
        ',':(-1,-1),
        'Y':(1,1),
        'U':(1,0),
        'I':(1,-1),
        'H':(0,1),
        'J':(0,0),
        'K':(0,-1),
        'N':(-1,1),
        'M':(-1,0),
        '<':(-1,-1),
    }

# z, alpha(rotation)
controls_end = {
        'd':(0,1),
        'g':(0,-1),
        'r':(1,0),
        'v':(-1,0),
        'f':(0,0),
        'D':(0,1),
        'G':(0,-1),
        'R':(1,0),
        'V':(-1,0),
        'F':(0,0),
    }




class PublishThread(threading.Thread):
    def __init__(self, x,y,z,a,rate):
        super(PublishThread, self).__init__()
        self.publisher = rospy.Publisher('Berry_position_msg', BerryPos, queue_size = 1)
        self.x = x
        self.y = y
        self.z = z
        self.a = a

        self.condition = threading.Condition()
        print(self.condition)
        self.done = False

        # Set timeout to None if rate is 0 (causes new_message to wait forever
        # for new data to publish)
        if rate != 0.0:
            self.timeout = 1.0 / rate
        else:
            self.timeout = None

        self.start()

    ## subscriber == Inverse Kinematics node
    def wait_for_subscribers(self):
        i = 0
        while not rospy.is_shutdown() and self.publisher.get_num_connections() == 0:
            if i == 4:
                print("Waiting for subscriber to connect to {}".format(self.publisher.name))
            rospy.sleep(0.5)
            i += 1
            i = i % 5
        if rospy.is_shutdown():
            raise Exception("Got shutdown request before subscribers connected")

    def update(self, x, y, z, a):
        self.condition.acquire()
        self.x = x
        self.y = y
        self.z = z
        self.a = a

        # Notify publish thread that we have a new message.
        self.condition.notify()
        self.condition.release()

    def stop(self):
        self.done = True
        self.update(self.x,self.y,self.z,self.a)
        self.join()

    def run(self):
        pos = BerryPos(self.x,self.y,self.z,self.a)
        _ = 0
        while not self.done:
            self.condition.acquire()
            # Wait for a new message or timeout.
            self.condition.wait(self.timeout)
            # Copy state into twist message.
            pos.x = self.x
            pos.y = self.y
            pos.z = self.z
            pos.a = self.a
            self.condition.release()

            # Publish.
            self.publisher.publish(pos)
            _ += 1
            if _ %10==0:
                rospy.loginfo("x: %f_y: %f_z: %f_alpha : %f ",pos.x,pos.y,pos.z,pos.a)



        # Publish stop message when thread exits.
        pos.x = self.x
        pos.y = self.y
        pos.z = self.z
        pos.a = self.a

        self.publisher.publish(pos)


def getKey(key_timeout):
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], key_timeout)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


def get_positions_client():
    rospy.wait_for_service('/pose_kine')
    try:
        pos_set = rospy.ServiceProxy('/pose_kine', BerryKine)

        print("Requesting Pos")
        resp= pos_set(0,0,0,0)
        return resp

    except rospy.ServiceException as e:            
        print("Service call failed: %s"%e)

if __name__=="__main__":
    settings = termios.tcgetattr(sys.stdin)

    rospy.init_node('teleop_pos_node')
    poses = get_positions_client()
    print(poses)

    x = poses.x
    y = poses.y
    z = poses.z
    a = poses.a
    print("position : ",x,y,z,a)

    pos = BerryPos(x,y,z,a)

    repeat = rospy.get_param("~repeat_rate", 0.0)
    key_timeout = rospy.get_param("~key_timeout", 0.0)
    scale = rospy.get_param("~scale", 10.0)

    if key_timeout == 0.0:
        key_timeout = None

    pub_thread = PublishThread(x,y,z,a,repeat)

    status = 0

    try:
        pub_thread.wait_for_subscribers()
        pub_thread.update(x,y,z,a)

        print(msg)
        while(1):
            key = getKey(key_timeout)
            if key in controls_pos.keys():
                x = x + controls_pos[key][0]
                y = y + controls_pos[key][1]
            elif key in controls_end.keys():
                z = z + controls_end[key][0]
                a = a + controls_end[key][1]
            else:
                # Skip updating cmd_vel if key timeout and robot already
                # stopped.
                print("not move")
                if key == '' :
                    continue
                if (key == '\x03'):
                    break
            
            print( x,y,z,a)
            pub_thread.update(x,y,z,a)

    except Exception as e:
        print(e)

    finally:
        pub_thread.stop()

        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)

