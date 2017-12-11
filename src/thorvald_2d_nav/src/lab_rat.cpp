#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Point.h>
#include <vector>
#include <iostream>
#include <tf/tf.h>
#include <algorithm>
#include <cmath>
#include <visualization_msgs/Marker.h>

#include <rosgraph_msgs/Clock.h> /// SIMULATON

// ROS message includes
#include <thorvald_2d_nav/scan_detected_line.h>

ros::Time simulated_time; /// SIMULATON

// Parameters 
geometry_msgs::Point n;
int k; // iterations need to find the best model
double thershold_1 = 1.0;
double thershold_2 = 1.0;
int d_1 = 35; // nearby point to fit the line
int d_2 = 30; // nearby point to fit the line

double best_model;
double x_1[1440], y_1[1440], angle_1[1440], x_2[1440], y_2[1440], angle_2[1440];
sensor_msgs::LaserScan scan_msg_main;
int p_1 = 0, l_1 = 0, c_1 = 0, a_1 = 0, b_1 = 0, p_2 = 0, l_2 = 0, c_2 = 0, a_2 = 0, b_2 = 0;
double current_range_1, current_range_2;
int final_count_1 = 0, final_count_2 = 0, final_count_3 = 0, final_count_4 = 0, final_count_5 = 0, final_count_6 = 0, finale = 0;
int count_i_1[1440], count_i_2[1440];
visualization_msgs::Marker line_strip_1, line_strip_2, line_strip_3;

thorvald_2d_nav::scan_detected_line polar_points;
geometry_msgs::Pose thorvald_estimated_pose;

// Our "data".
struct Point {
  double real_x; double real_y;
};

// Our "model".
struct Line {
  double m; double b;
};

Point best_inlierpoints_1[1440];
Point current_best_inlierpoints_1[1440];
Line final_line_1;
Point final_Index_1[2], current_Index_1[2];

Point best_inlierpoints_2[1440];
Point current_best_inlierpoints_2[1440];
Line final_line_2;
Point final_Index_2[2], current_Index_2[2];

// Laser Scan data
void scanCallback (const sensor_msgs::LaserScan::ConstPtr& scan_msg)
{
        // size_t num_ranges = scan_msg->ranges.size();
        scan_msg_main.ranges = scan_msg->ranges;
        scan_msg_main.angle_min = scan_msg->angle_min;
        scan_msg_main.angle_increment = scan_msg->angle_increment;
} // callback end

void simtimeCallback(const rosgraph_msgs::Clock::ConstPtr& sim_time){
simulated_time = sim_time->clock;
}

// Thorvald Estimated Pose data
void robotposeCallback (const geometry_msgs::Pose::ConstPtr& pose_msg)
{
thorvald_estimated_pose.position = pose_msg->position;                  
thorvald_estimated_pose.orientation = pose_msg->orientation;
}

// RANSAC for line detection
Point Line_detection_1(sensor_msgs::LaserScan scan_msgs, Point* line_pt_1){

        // x, y, theta calculation
	for (int i_1 = 540; i_1 <= 810; i_1++){
	 angle_1[i_1] = scan_msg_main.angle_min +i_1*scan_msg_main.angle_increment; 
	 x_1[i_1] = scan_msg_main.ranges[i_1]*cos(angle_1[i_1]);
	 y_1[i_1] = scan_msg_main.ranges[i_1]*sin(angle_1[i_1]);
                
          if(!std::isnan(x_1[i_1]) && !std::isnan(y_1[i_1]) && (scan_msg_main.ranges[i_1] < 5.0)){
           count_i_1[l_1] = i_1;
           l_1= l_1 + 1;
          } // storing the ith value with pre-conditions

        } // storing the range values (end for loop)
        
        l_1= l_1 - 1;
        int i_corr_x_1 = rand()% (l_1);
        int i_corr_y_1 = rand()% (l_1);
        int aIndex_1 = count_i_1[i_corr_x_1]; 
        int bIndex_1 = count_i_1[i_corr_y_1];

        // sending the scan data
        Line model_1;
        int count_1 = 0;

        if ((aIndex_1!=bIndex_1) && (y_1[aIndex_1]!=0)&& (x_1[aIndex_1]!=0)&& (y_1[bIndex_1]!=0)&& (x_1[bIndex_1]!=0)){
          model_1.m = (y_1[bIndex_1] - y_1[aIndex_1])/(x_1[bIndex_1] - x_1[aIndex_1]);
          model_1.b = y_1[aIndex_1] - model_1.m * x_1[aIndex_1];
          }

        else { count_1 = 1; }

        if(count_1 == 0){   // check for aIndex and bIndex values

          for (int i_1 = 0; i_1 < (l_1); i_1++){
            int index_1 = count_i_1[i_1];
            double error_1 = y_1[index_1] - (model_1.m*x_1[index_1] + model_1.b); // error calculation

            if(thershold_1 > abs(error_1) && (error_1 != 0)){  // check for threshold
              current_best_inlierpoints_1[p_1].real_x = x_1[index_1];
              current_best_inlierpoints_1[p_1].real_y = y_1[index_1];
              p_1 = p_1 +1;

              }   

          } // for loop end
        
        final_count_1 = p_1-1;
        l_1 = 0;

        if(final_count_1 > d_1){ // selecting the inliers with max of points    

         if(c_1 == 0){
           final_count_2 = final_count_1;
           c_1 = 1;
           } 

         if(c_1 == 1 && final_count_1 > final_count_2){
           final_count_3 = final_count_1;
           }

         if(final_count_3 > final_count_2){
            final_Index_1[1].real_x = x_1[aIndex_1];
            final_Index_1[1].real_y = y_1[aIndex_1];
            final_Index_1[2].real_x = x_1[bIndex_1];
            final_Index_1[2].real_y = y_1[bIndex_1]; 

            polar_points.range[0] = scan_msg_main.ranges[aIndex_1];
            polar_points.range[1] = scan_msg_main.ranges[bIndex_1];
            polar_points.bearing[0] = angle_1[aIndex_1];
            polar_points.bearing[1] = angle_1[bIndex_1];
           }
         else{
            final_Index_1[1].real_x = x_1[aIndex_1];
            final_Index_1[1].real_y = y_1[aIndex_1];
            final_Index_1[2].real_x = x_1[bIndex_1];
            final_Index_1[2].real_y = y_1[bIndex_1]; 

            polar_points.range[0] = scan_msg_main.ranges[aIndex_1];
            polar_points.range[1] = scan_msg_main.ranges[bIndex_1];
            polar_points.bearing[0] = angle_1[aIndex_1];
            polar_points.bearing[1] = angle_1[bIndex_1];

           }
            // std::cout << "final_count_2:" << final_count_2 << "\n" << std::endl;
            // std::cout << "final_count_3:" << final_count_3 << "\n" << std::endl;
                 
          } // max inliers selection end

        // Assigning variables to zero to start over
        p_1 = 0;

        } //check for aIndex and bIndex values end
}

Point Line_detection_2(sensor_msgs::LaserScan scan_msgs, Point* line_pt_2){

        // x, y, theta calculation
	for (int i_2 = 300; i_2 <= 570; i_2++){
	angle_2[i_2] = scan_msg_main.angle_min+i_2*scan_msg_main.angle_increment;
	x_2[i_2] = scan_msg_main.ranges[i_2]*cos(angle_2[i_2]);
	y_2[i_2] = scan_msg_main.ranges[i_2]*sin(angle_2[i_2]);

          if(!std::isnan(x_2[i_2]) && !std::isnan(y_2[i_2]) && (scan_msg_main.ranges[i_2] < 5.0)){
           count_i_2[l_2] = i_2;
           l_2 = l_2 + 1;                
          } // storing the ith value with pre-conditions
         } // storing the range values (end for loop)
        
        l_2= l_2 - 1;
        int i_corr_x_2 = rand()% (l_2-1);
        int i_corr_y_2 = rand()% (l_2-1);
        int aIndex_2 = count_i_2[i_corr_x_2]; 
        int bIndex_2 = count_i_2[i_corr_y_2];

        // sending the scan data
        Line model_2;
        int count_2 = 0;

        if ((aIndex_2!=bIndex_2) && (y_2[aIndex_2]!=0)&& (x_2[aIndex_2]!=0)&& (y_2[bIndex_2]!=0)&& (x_2[bIndex_2]!=0)){
         model_2.m = (y_2[bIndex_2] - y_2[aIndex_2])/(x_2[bIndex_2] - x_2[aIndex_2]);
         model_2.b = y_2[aIndex_2] - model_2.m * x_2[aIndex_2];
        }

        else { count_2 = 1; }

        if(count_2 == 0){   // check for aIndex and bIndex values

        for (int i_2 = 0; i_2 < (l_2-1); i_2++){
           int index_2 = count_i_2[i_2];
           double error_2 = y_2[index_2] - (model_2.m*x_2[index_2] + model_2.b); // error calculation

           if(thershold_2 > abs(error_2) && error_2 != 0){
           current_best_inlierpoints_2[p_2].real_x = x_2[index_2];
           current_best_inlierpoints_2[p_2].real_y = y_2[index_2];
           p_2 = p_2 +1;
           }   
         } // for loop end
        
        final_count_4 = p_2-1;
        l_2 = 0;

        if(final_count_4 > d_2){ // selecting the inliers with max of points    

         if(c_2 == 0){
           final_count_5 = final_count_4;
           c_2 = 1;
           } 

         if(c_2 == 1 && final_count_4 > final_count_5){
           final_count_6 = final_count_5;
           }

         if(final_count_6 > final_count_5){
            final_Index_2[1].real_x = x_2[aIndex_2];
            final_Index_2[1].real_y = y_2[aIndex_2];
            final_Index_2[2].real_x = x_2[bIndex_2];
            final_Index_2[2].real_y = y_2[bIndex_2]; 

            polar_points.range[2] = scan_msg_main.ranges[aIndex_2];
            polar_points.range[3] = scan_msg_main.ranges[bIndex_2];
            polar_points.bearing[2] = angle_2[aIndex_2];
            polar_points.bearing[3] = angle_2[bIndex_2];
           }
         else{
            final_Index_2[1].real_x = x_2[aIndex_2];
            final_Index_2[1].real_y = y_2[aIndex_2];
            final_Index_2[2].real_x = x_2[bIndex_2];
            final_Index_2[2].real_y = y_2[bIndex_2]; 

            polar_points.range[2] = scan_msg_main.ranges[aIndex_2];
            polar_points.range[3] = scan_msg_main.ranges[bIndex_2];
            polar_points.bearing[2] = angle_2[aIndex_2];
            polar_points.bearing[3] = angle_2[bIndex_2];
           }
             std::cout << "final_count_5:" << final_count_5 << "\n" << std::endl;
             std::cout << "final_count_6:" << final_count_6 << "\n" << std::endl;
                 
          } // max inliers selection end

        // Assigning variables to zero to start over
        p_2 = 0;

        } //check for aIndex and bIndex values end
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "lab_rat");
	ros::NodeHandle n;

        ros::Rate r(10);

        // Subscribers
	ros::Subscriber scan_sub_test = n.subscribe("scan", 100, scanCallback);
        ros::Subscriber time_sub = n.subscribe("clock", 100, simtimeCallback);
        ros::Subscriber pose_sub = n.subscribe("thorvald_pose", 100, robotposeCallback);

        // Publishers
        ros::Publisher marker_pub_1 = n.advertise<visualization_msgs::Marker>("line_marker_1", 10);
        ros::Publisher marker_pub_2 = n.advertise<visualization_msgs::Marker>("line_marker_2", 10);
        ros::Publisher marker_pub_3 = n.advertise<visualization_msgs::Marker>("line_marker_3", 10);
        ros::Publisher point_pub = n.advertise<thorvald_2d_nav::scan_detected_line>("measurement_points", 10);

        while (ros::ok()){
	ros::spinOnce();

        if(scan_msg_main.ranges.size() > 0 && (finale == 0)){
               
         for (k=0; k <= 250; k++){ // Number of iterations
          Line_detection_1(scan_msg_main, final_Index_1);
          }

         for (k=0; k <= 1000; k++){ // Number of iterations
          Line_detection_2(scan_msg_main, final_Index_2);
          }

        finale = 1;
          
        // Sub-goals check
        if(final_Index_1[1].real_x > final_Index_1[2].real_x){
         if((final_Index_1[1].real_x -thorvald_estimated_pose.position.x < 0.05) && (final_Index_1[1].real_y -thorvald_estimated_pose.position.y < 0.05)){
                  finale = 0;
         }}         
        else{
         if((final_Index_1[2].real_x -thorvald_estimated_pose.position.x < 0.05) && (final_Index_1[2].real_y -thorvald_estimated_pose.position.y < 0.05)){
                  finale = 0;
         }}

        }

if (simulated_time.toSec()!=0){ /// SIMULATON

        if ( (final_count_1 != 0) && (line_strip_1.points.size() < 2) && (!boost::empty(final_Index_1))){ 
        line_strip_1.header.frame_id = "/map";
        line_strip_1.header.stamp = simulated_time;
        line_strip_1.action = visualization_msgs::Marker::ADD;
        line_strip_1.pose.orientation.w = 1.0;
        line_strip_1.type = visualization_msgs::Marker::LINE_STRIP;
        line_strip_1.lifetime = ros::Duration(0.1);
        line_strip_1.id = 1;
        // LINE_STRIP/LINE_LIST markers use only the x component of scale, for the line width
        line_strip_1.scale.x = 0.03;

        // Line strip is blue
        line_strip_1.color.b = 1.0;
        line_strip_1.color.a = 1.0;

        // Create the vertices for the points and lines
         for(int q_1 = 1; q_1 <= 2; q_1++){
        geometry_msgs::Point pt_1;

        pt_1.x = final_Index_1[q_1].real_x; 
        pt_1.y = final_Index_1[q_1].real_y; 
  
          if(pt_1.x != 0 && pt_1.y != 0){
           line_strip_1.points.push_back(pt_1); }            
         } // for loop end for storing points


        } // count check

        if ((final_count_4 != 0) && (line_strip_2.points.size() < 2) && (!boost::empty(final_Index_2))){ 
        line_strip_2.header.frame_id = "/map";
        line_strip_2.header.stamp = simulated_time;
        line_strip_2.action = visualization_msgs::Marker::ADD;
        line_strip_2.pose.orientation.w = 1.0;
        line_strip_2.type = visualization_msgs::Marker::LINE_STRIP;
        line_strip_2.lifetime = ros::Duration(0.1);
        line_strip_2.id = 1;
        // LINE_STRIP/LINE_LIST markers use only the x component of scale, for the line width
        line_strip_2.scale.x = 0.03;

        // Line strip is blue
        line_strip_2.color.b = 1.0;
        line_strip_2.color.a = 1.0;

        // Create the vertices for the points and lines
         for(int q_2 = 1; q_2 <= 2; q_2++){
        geometry_msgs::Point pt_2;

        pt_2.x = final_Index_2[q_2].real_x; 
        pt_2.y = final_Index_2[q_2].real_y; 

          if(pt_2.x != 0 && pt_2.y != 0){
           line_strip_2.points.push_back(pt_2); }            
         } // for loop end for storing points

        } // count check

        if(((final_count_1 != 0)) && ((final_count_4 != 0)) && (line_strip_3.points.size() < 2)){
        line_strip_3.header.frame_id = "/map";
        line_strip_3.header.stamp = simulated_time;
        line_strip_3.action = visualization_msgs::Marker::ADD;
        line_strip_3.pose.orientation.w = 1.0;
        line_strip_3.type = visualization_msgs::Marker::LINE_STRIP;
        line_strip_3.lifetime = ros::Duration(0.1);
        line_strip_3.id = 1;

       // LINE_STRIP/LINE_LIST markers use only the x component of scale, for the line width
        line_strip_3.scale.x = 0.03;

        // Line strip is blue
        line_strip_3.color.b = 1.0;
        line_strip_3.color.a = 1.0;

        // Create the vertices for the points and lines
         for(int q_3 = 1; q_3 <= 2; q_3++){
        geometry_msgs::Point pt_3;
        pt_3.x = (final_Index_1[q_3].real_x + final_Index_2[q_3].real_x)/2; 
        pt_3.y = (final_Index_1[q_3].real_y + final_Index_2[q_3].real_y)/2; 

         if(pt_3.x != 0 && pt_3.y != 0){
         line_strip_3.points.push_back(pt_3); 
          }  
         } // for loop end for storing points          

        polar_points.header.stamp = simulated_time; /// SIMULATON
        } // count check

        marker_pub_1.publish(line_strip_1);
        marker_pub_2.publish(line_strip_2);
        marker_pub_3.publish(line_strip_3);
        point_pub.publish(polar_points);
         } /// SIMULATON
	} // node shutdown
  r.sleep();
  return 0;
}
