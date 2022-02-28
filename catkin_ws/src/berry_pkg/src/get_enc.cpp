// Author : Juhan Park
#include <ros/ros.h>
#include "std_msgs/String.h"
#include "berry_pkg/SyncGetPosition.h"
#include "berry_pkg/BerrySetPosition.h"
#include "berry_pkg/BerrySetAngle.h"
#include "berry_pkg/SyncSetPosition.h"
#include "dynamixel_sdk/dynamixel_sdk.h"


using namespace dynamixel;

// Control table address
#define ADDR_TORQUE_ENABLE    64
#define ADDR_PRESENT_POSITION 132
#define ADDR_GOAL_POSITION    116

// Protocol version
#define PROTOCOL_VERSION      2.0             // Default Protocol version of DYNAMIXEL X series.

// Default setting
#define DXL1_ID               1               // DXL1 ID
#define DXL2_ID               2               // DXL2 ID
#define DXL3_ID               5               // DXL3 ID
#define DXL4_ID               6               // DXL4 ID
#define BAUDRATE              57600           // Default Baudrate of DYNAMIXEL X series
#define DEVICE_NAME           "/dev/ttyUSB0"  // [Linux] To find assigned port, use "$ ls /dev/ttyUSB*" command
#define rad                    2*M_PI
using namespace std;

berry_pkg::BerrySetPosition merge_pos(berry_pkg::SyncGetPosition s1, berry_pkg::SyncGetPosition s2){
    berry_pkg::BerrySetPosition R;
    R.id1=s1.request.id1;
    R.id2=s1.request.id2;
    R.id3=s2.request.id1;
    R.id4=s2.request.id2;
    R.position1=s1.response.position1;
    R.position2=s1.response.position2;
    R.position3=s2.response.position1;
    R.position4=s2.response.position2;
    return R;
}

berry_pkg::BerrySetAngle get_ths(berry_pkg::BerrySetPosition R){
    berry_pkg::BerrySetAngle ths;
    ths.th1 = R.position1;
    ths.th2 = R.position2;
    ths.th3 = R.position3;
    ths.th4 = R.position4;
    
    ths.angle1 = R.position1 % 4096 /4096.0*rad;
    ths.angle2 = R.position2 % 4096 /4096.0*rad;
    ths.angle3 = R.position3 % 4096 /4096.0*rad;
    ths.angle4 = R.position4 % 4096 /4096.0*rad;
    
    return ths;
}



int main(int argc, char **argv){
    ros::init(argc,argv,"get_enc");

    ros::NodeHandle nh;

    ros::ServiceClient berry_enc_service_client = nh.serviceClient<berry_pkg::SyncGetPosition>("/sync_get_position");
    
    if (argc == 3)
    {
        //ROS_INFO("cmd : rosrun ros_tutorials_service service_client arg0 arg1");
        //ROS_INFO("arg0 : Id1, arg1: Id2");
        berry_pkg::SyncGetPosition srv;

        srv.request.id1  = atoll(argv[1]);
        srv.request.id2  = atoll(argv[2]);

        if (berry_enc_service_client.call(srv))
        {
            ROS_INFO("send srv, srv.Request.id1 and id2: %d, %d", srv.request.id1, srv.request.id2);
            ROS_INFO("receive srv, srv.Request.result : %d, %d",srv.response.position1,srv.response.position2);
        }   
        else{
            ROS_ERROR("Failed to call service sync_get_position_srv");
            return 1;
        }
        return 1;
    }
    else
    {
    
    berry_pkg::SyncGetPosition srv1;
    berry_pkg::SyncGetPosition srv2;

    srv1.request.id1  = DXL1_ID;
    srv1.request.id2  = DXL2_ID;
    srv2.request.id1  = DXL3_ID;
    srv2.request.id2  = DXL4_ID;

    if (berry_enc_service_client.call(srv1) && berry_enc_service_client.call(srv2))
    {
        ROS_INFO("send srv, srv.Request.id1, id2, id3, id4: %d, %d,%d,%d", srv1.request.id1, srv1.request.id2,srv2.request.id1, srv2.request.id2);
        ROS_INFO("receive srv, srv.Request.result : %d, %d,%d,%d",srv1.response.position1,srv1.response.position2,srv2.response.position1,srv2.response.position2);
    }   
    //else{
        //ROS_ERROR("Failed to call service sync_get_position_srv");
        //return 1;
    //}
    berry_pkg::BerrySetPosition info;
    info = merge_pos(srv1,srv2);
    berry_pkg::BerrySetAngle ths = get_ths(info);
    cout << ths << endl;
    ros::Publisher pub = nh.advertise<berry_pkg::BerrySetAngle>("berry_angle_msg",10);

    ros::Rate loop_rate(1);

    while(ros::ok())
    {   
        int _ = 0;
        if (_%10 ==0){
            berry_enc_service_client.call(srv1);
            berry_enc_service_client.call(srv2);
            info = merge_pos(srv1,srv2);
            berry_pkg::BerrySetAngle ths = get_ths(info);
            pub.publish(ths);   
            cout << ths << endl;    

        }
        _ = _ + 1;
        loop_rate.sleep();
        
    }
    return 0;
    }
    return 0;

}