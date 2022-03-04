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
        float ths[2][4] = {0};
        float last_ths[4] = {0};
        float* p = &ths[0][0];
        int enc[4] = {0};

        //*p[2] = 2.1;
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
        float *get_best_position(float th_b[],float last_ths[]);
        int *get_enc_from_ths(float ths_[], int enc_[]);
        

};

void IK::msgCallback(const berry_pkg::BerryPos::ConstPtr& msg)
{
    ROS_INFO("recieve pos = %f ,%f ,%f ,%f ",msg->x,msg->y,msg->z,msg->a);
    
    float th_b[2];

    if ( msg->y <0){
        float d = pow(msg->x ,2) + pow(msg->y,2);
        float c2 = (d - pow(l1,2) - pow(l2,2))/(2*l1*l2);
        
        IK::ths[0][0] = -atan2(sqrt(1-pow(c2,2)), c2);  // link 2 angle
        IK::ths[1][0] = -atan2(-sqrt(1-pow(c2,2)), c2);
        
        // ths[0] = link 2  , ths[1] = link 1 , ths[2] = motor3, ths[3] = motor4

        for (int i=0;i<2;i++){
            IK::ths[i][1] = -(atan2(msg->y,msg->x)-atan2(l2*sin(ths[i][0]),l1+l2*cos(ths[i][0])));
            th_b[i] = -(ths[i][0]-ths[i][1]);    // th_b 
            IK::ths[i][3] = msg->a - th_b[i];
            IK::ths[i][2] = ths[i][3] - M_PI/8*(-msg->z+d1+d2+d3);
        }
    }
    else{
        float d = pow(msg->x ,2) + pow(msg->y,2);
        float c2 = (d - pow(l1,2) - pow(l2,2))/(2*l1*l2);
        
        IK::ths[0][0] = atan2(sqrt(1-pow(c2,2)), c2);  // link 2 angle
        IK::ths[1][0] = atan2(-sqrt(1-pow(c2,2)), c2);
        
        // ths[0] = link 2  , ths[1] = link 1 , ths[2] = motor3, ths[3] = motor4

        for (int i=0;i<2;i++){
            IK::ths[i][1] = atan2(msg->y,msg->x)-atan2(l2*sin(ths[i][0]),l1+l2*cos(ths[i][0]));
            th_b[i] = ths[i][0]+ths[i][1];    // th_b 
            IK::ths[i][3] = msg->a - th_b[i];
            IK::ths[i][2] = ths[i][3] - M_PI/8*(-msg->z+d1+d2+d3);
        }
    }
    // ROS_INFO("get th set 1 = %f ,%f ,%f ,%f ",ths[0][1],th_b[0],ths[0][2],ths[0][3]);
    // ROS_INFO("get th set 2 = %f ,%f ,%f ,%f ",ths[1][1],th_b[1],ths[1][2],ths[1][3]);

    float *best_ths = IK::get_best_position(th_b,last_ths);
    
    // ROS_INFO("best_ths 1 = %f", best_ths[1]);
    // ROS_INFO("best_ths 2 = %f", best_ths[0]);
    // ROS_INFO("best_ths 3 = %f", best_ths[2]);
    // ROS_INFO("best_ths 4 = %f", best_ths[3]);

    
    
    int *enc_ = IK::get_enc_from_ths(best_ths, enc);

    // ROS_INFO("enc 1 = %d", enc_[1]);
    // ROS_INFO("enc 2 = %d", enc_[0]);
    // ROS_INFO("enc 3 = %d", enc_[2]);
    // ROS_INFO("enc 4 = %d", enc_[3]);

    berry_pkg::SyncSetPosition output1;
    berry_pkg::SyncSetPosition output2;

    output1.id1=1;
    output1.id2=2;
    output1.position1=enc_[1];
    output1.position2=enc_[0];
    output2.id1=5;
    output2.id2=6;
    output2.position1=enc_[2];
    output2.position2=enc_[3];

    pub1.publish(output1);
    pub2.publish(output2);

    ///////////    어떤 역기구학 값을 받아아서 선택해줘야할지    
    ///이전 th랑 역기구학 목적지 th들이랑 오차 작은 거로 선택하는 걸로 하자

    //last_th assign
}

float *IK::get_best_position(float th_b[],float last_ths[]){
    // th 중에 어느게 가까운 th인지 핀별해야 해 
    // git branch update test
    float error[2]={0}; 
    ROS_INFO("th 1  = %f, %f",ths[0][1], ths[1][1]);

    ROS_INFO("th_b  = %f, %f",th_b[0], th_b[1]);
    for (int i=0;i<2;i++){
        
        error[i] = error[i] + (th_b[i]-last_ths[0]);
        //error[i] = error[i] + (ths[i][1]-last_ths[1]);
    }
    ROS_INFO("error 1 = %f",error[0]);
    ROS_INFO("error 2 = %f",error[1]);

    if (error[0] >= error[1]) {
        for (int i=1; i<4; i++){
            last_ths[i]= ths[0][i];
        }
        last_ths[0] = th_b[0];
    }
    else{
        for (int i=1; i<4; i++){
            last_ths[i]= ths[1][i];
        }
        last_ths[0] = th_b[1];
    }
    return last_ths;
}

int *IK::get_enc_from_ths(float last_ths_[], int enc_[]){
    float rad = 2*M_PI;
    for(int i=0;i<4;i++){
        enc_[i] = last_ths_[i] * 4096 / rad;
    }

    return enc_;
}

int main(int argc, char **argv)
{   
    ros::init(argc, argv, "IK"); // node initialzation

    IK ik;

    ros::spin();
    
    return 0;
}