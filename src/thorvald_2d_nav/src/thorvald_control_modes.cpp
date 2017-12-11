/****************************************************************
 *
 * Copyright (c) 2017
 *
 * Norwegian university of Life Sciences (NMBU)
 * Robotics and Control
 *
 *
 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 *
 * Project name: Thorvald II
 * ROS package name: thorvald_control_modes
 * Description: This node handles communication between ROS and the CANopen network of the Thorvald II class of robots
 *
 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 *
 * Author: Vignesh Raja Ponnambalam, email:vignesh.raja.ponnambalam@nmbu.no
 *
 * Date of creation: Dec 2017
 * ToDo: - Clean up
 *       - Look at wait for stop if statement
 *
 *
 ****************************************************************/

#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Point.h>
#include <vector>
#include <algorithm>
#include <std_msgs/String.h>
#include <iostream>
#include <tf/tf.h>
#include <algorithm>
#include <cmath>
#include <visualization_msgs/Marker.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include <std_msgs/Float64MultiArray.h>

geometry_msgs::Pose thorvald_estimated_pose;
geometry_msgs::Point line[2];
double linear_velocity, angular_velocity;
int Total_Points = 20;
geometry_msgs::Pose Points[20];

// possible control drive modes
enum ControlDriveModes
{
DRIVE_MODE_1, DRIVE_MODE_2, DRIVE_MODE_3,
NUMBER_OF_CONTROL_MODES
};

// Thorvald Estimated Pose data
void robotposeCallback (const geometry_msgs::Pose::ConstPtr& pose_msg)
{
thorvald_estimated_pose.position = pose_msg->position;                  
thorvald_estimated_pose.orientation = pose_msg->orientation;
}

//line points 
void finallineCallback (const visualization_msgs::Marker::ConstPtr& line_msg)
{

if (line_msg->points.size() > 0){        
line[1].x = line_msg->points[1].x;
line[1].y = line_msg->points[1].y;

line[2].x = line_msg->points[2].x;
line[2].y = line_msg->points[2].y;
}

}

double control_law_2(double v,double omega){

   // split the line into segment of points
   for(int i=0;i<Total_Points;i++){
        Points[i].position.x = line[1].x * (1 - (i/Total_Points)) + line[2].x * (i / Total_Points);
        Points[i].position.y =line[1].y * (1 - (i/Total_Points)) + line[2].y * (i / Total_Points);
    }

  v = 0.1; // angluar velocity
  double K_d = 0.5;
  double K_p = 0.1;

  // calculation of error
  double q_x =  pow((Points[0].position.x-thorvald_estimated_pose.position.x),2);
  double q_y =  pow((Points[0].position.y-thorvald_estimated_pose.position.y),2);
  double position_error = sqrt(q_x + q_y);
  double angular_error = (Points[0].position.y/Points[0].position.x) - tf::getYaw(thorvald_estimated_pose.orientation);

  // control law
  omega = v * pow(cos(angular_error),3) * (-(K_d*tan(angular_error)) - (K_p*position_error));

}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "thorvald_control_modes");
  ros::NodeHandle n;

  while (ros::ok()){

  ros::Subscriber pose_sub = n.subscribe("thorvald_pose", 100, robotposeCallback);
  ros::Subscriber finalline_sub = n.subscribe("final_line", 100, finallineCallback);

  // Reaching the Starting Point
  if(DRIVE_MODE_1 == true){
   DRIVE_MODE_2 == false;
   DRIVE_MODE_3 == false;
  }

  // Navigation between rows
  else if(DRIVE_MODE_2 == true){
  if(!boost::empty(line)){
  control_law_2(linear_velocity, angular_velocity); 
  }
   DRIVE_MODE_1 == false;
   DRIVE_MODE_3 == false;
  }

  // Transition between rows
  else{
   DRIVE_MODE_1 == false;
   DRIVE_MODE_2 == false;
  }

  ros::spinOnce();	
  }

  return 0;

}