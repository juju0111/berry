// Author : Juhan Park
#include <ros/ros.h>
#include <iostream>
#include "std_msgs/String.h"
#include "berry_pkg/BerryPos.h"
#include "berry_pkg/SyncSetPosition.h"
#include <cmath>

class IK{
    private:
        ros::NodeHandle nh;
        ros::Publisher pub1;
        ros::Publisher pub2;
        ros::Subscriber sub_;
    public:
        float ths[4] = {0,0,0,0};
        float (*p)[4] = &ths;

        float l1 = 180;
        float l2 = 180;
        float d1=193.15;
        float d2=-12.68;
        float d3=-99.48;

        // class gerator 
        IK(){
            //make pub in generator
            pub1 = nh.advertise<berry_pkg::SyncSetPosition>("/target_th12",10);
            pub2 = nh.advertise<berry_pkg::SyncSetPosition>("/target_th34",10);

            sub_ = nh.subscribe("Berry_position_msg",10,&IK::msgCallback,this);
        }

        void msgCallback(const berry_pkg::BerryPos::ConstPtr& msg);
        float cal_best_position(float th1[],float th2[],float th3[], float th4[], float &p);

        

};

void IK::msgCallback(const berry_pkg::BerryPos::ConstPtr& msg)
{
    ROS_INFO("recieve pos = %f ,%f ,%f ,%f ",msg->x,msg->y,msg->z,msg->a);
    float d = pow(msg->x ,2) + pow(msg->y,2);
    float c2 = (d - pow(l1,2) - pow(l2,2))/(2*l1*l2);

    float th2[2],th1[2],th_b[2],th4[2],th3[2];

    th2[0] = atan2(sqrt(1-pow(c2,2)), c2);
    th2[1] = atan2(-sqrt(1-pow(c2,2)), c2);
    
    th1[0] = atan2(msg->y,msg->x)-atan2(l2*sin(th2[0]),l1+l2*cos(th2[0]));
    th1[1] = atan2(msg->y,msg->x)-atan2(l2*sin(th2[1]),l1+l2*cos(th2[1]));
    th_b[0] = th1[0]+th2[0];
    th_b[1] = th1[1]+th2[1];
    th4[0] = msg->a - th_b[0];
    th4[1] = msg->a - th_b[1];
    th3[0] = th4[0] - M_PI/8*(-msg->z+d1+d2+d3);
    th3[1] = th4[1] - M_PI/8*(-msg->z+d1+d2+d3);

    ROS_INFO("get th set 1 = %f ,%f ,%f ,%f ",th1[0],th_b[0],th3[0],th4[0]);
    ROS_INFO("get th set 2 = %f ,%f ,%f ,%f ",th1[1],th_b[1],th3[1],th4[1]);

    //float ths = IK::cal_best_position(th1,th_b,th3,th4, IK.p);

    //berry_pkg::SyncSetPosition output1;
    //output1.id1=1;
    //output1.id1=2;
    ///////////    어떤 역기구학 값을 받아아서 선택해줘야할지    
    ///이전 th랑 역기구학 목적지 th들이랑 오차 작은 거로 선택하는 걸로 하자
}

float IK::cal_best_position(float th1[],float th2[],float th3[], float th4[], float &p){
    return 0;
}



int main(int argc, char **argv)
{   
    ros::init(argc, argv, "IK"); // node initialzation

    IK ik;
    std::cout<< "p[0]" <<*(ik.p) << std::endl;
    std::cout<< "p[1]" <<&ik.ths[0] << std::endl;

    ros::spin();
    
    return 0;
}