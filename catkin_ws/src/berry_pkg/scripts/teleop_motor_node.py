#!/usr/bin/env python

from __future__ import print_function

import threading

import roslib; 
import rospy
from dynamixel_sdk import *
from dynamixel_sdk_examples.msg import *
from dynamixel_sdk_examples.srv import *

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
motor 1 control:
       i    
       k    
       ,    

motor 2 control:
       y    
       h    
       n    
control both 1 and 2 control:
       u    
       j    
       m    

CTRL-C to quit
"""

controls = {
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

speedBindings={
        'q':(1.1,1.1),
        'z':(.9,.9),
        'w':(1.1,1),
        'x':(.9,1),
        'e':(1,1.1),
        'c':(1,.9),
    }

class PublishThread(threading.Thread):
    def __init__(self, pos1,pos2,rate):
        super(PublishThread, self).__init__()
        self.publisher = rospy.Publisher('sync_set_position', SyncSetPosition, queue_size = 1)
        self.pos1 = pos1
        self.pos2 = pos2
        self.id1 = 1
        self.id2 = 2

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

    def update(self, pos1, pos2):
        self.condition.acquire()
        self.pos1 = pos1
        self.pos2 = pos2

        # Notify publish thread that we have a new message.
        self.condition.notify()
        self.condition.release()

    def stop(self):
        self.done = True
        self.update(self.pos1,self.pos2)
        self.join()

    def run(self):
        DXL1_ID                     = 1
        DXL2_ID                     = 2

        pos = SyncSetPosition(DXL1_ID,DXL2_ID,self.pos1,self.pos2)
        _ = 0
        while not self.done:
            self.condition.acquire()
            # Wait for a new message or timeout.
            self.condition.wait(self.timeout)

            # Copy state into twist message.
            pos.id1 = self.id1
            pos.id2 = self.id2
            pos.position1 = self.pos1
            pos.position2 = self.pos2

            self.condition.release()

            # Publish.
            self.publisher.publish(pos)

            _ += 1
            if _ %10==0:
                rospy.loginfo("motor_%d_present_pos : %d",pos.id1,pos.position1)
                rospy.loginfo("motor_%d_present_pos : %d",pos.id2,pos.position2)


        # Publish stop message when thread exits.
        pos.id1 = self.id1
        pos.id2 = self.id2
        pos.position1 = self.pos1
        pos.position2 = self.pos2

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


def get_positions_client(id_1,id_2):
    rospy.wait_for_service('/sync_get_position')
    try:
        pos_set = rospy.ServiceProxy('/sync_get_position', SyncGetPosition)

        print("Requesting %s+%s"%(id_1,id_2))
        resp= pos_set(id_1,id_2)
        return resp

    except rospy.ServiceException as e:            
        print("Service call failed: %s"%e)


if __name__=="__main__":
    settings = termios.tcgetattr(sys.stdin)

    rospy.init_node('teleop_motor_node')

    DXL1_ID                     = 1
    DXL2_ID                     = 2

    poses = get_positions_client(DXL1_ID,DXL2_ID)
    
    pos1 = poses.position1
    pos2 = poses.position2

    pos = SyncSetPosition(DXL1_ID,DXL2_ID,pos1,pos2)



    pos.position1 = pos1
    pos.position2 = pos2
    

    repeat = rospy.get_param("~repeat_rate", 0.0)
    key_timeout = rospy.get_param("~key_timeout", 0.0)
    scale = rospy.get_param("~scale", 10.0)

    if key_timeout == 0.0:
        key_timeout = None

    pub_thread = PublishThread(pos1,pos2,repeat)
    pub_thread.id1=DXL1_ID
    pub_thread.id2=DXL2_ID
    
    pos1 = pub_thread.pos1
    pos2 = pub_thread.pos2
    
    #print("pos{} , pos{} :: ".foramt(pub_thread.id1,pub_thread.id2),pub_thread.pos1,pub_thread.pos2)
    status = 0


    try:
        pub_thread.wait_for_subscribers()
        pub_thread.update(pos1,pos2)

        print(msg)
        while(1):
            key = getKey(key_timeout)
            if key in controls.keys():
                pos1 = pos1 + controls[key][0]*scale
                pos2 = pos2 + controls[key][1]*scale
            else:
                # Skip updating cmd_vel if key timeout and robot already
                # stopped.
                if key == '' :
                    continue
                if (key == '\x03'):
                    break
 
            pub_thread.update(pos1,pos2)

    except Exception as e:
        print(e)

    finally:
        pub_thread.stop()

        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
