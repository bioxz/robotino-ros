## Bash configuration for ROS with Robotino
###############################################
# Add the content of this file to your local
# .bashrc or use source <filename> to load the
# settings.
###############################################

# Editor
export EDITOR=vim

###############################################
# We expect the workspace (this repository)
# to be linked to ~/catkin_ws/. Also, the
# robotino-api2 package has to be installed.
###############################################

# Sources setup files from ROS
source /opt/ros/indigo/setup.bash
source ~/catkin_ws/devel/setup.bash

# Environment
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/catkin_ws/src
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:/usr/local/robotino/api2/cmake
export PATH=$PATH:/usr/local/robotino/api2/include
export PATH=$PATH:/usr/local/robotino/api2/include/rec/robotino/api2

# Connection setup
###############################################
# To use ROS local or with a remote Robotino
# (via WLAN connection), set these variables
# accordingly. Default IP from the Robotino is
# 172.26.1.1 and the client will get an adress
# in the 172.26.1.0 network.
###############################################

# Local configuration for development:
#export ROS_MASTER_URI=http://127.0.0.1:11311
#export ROS_HOSTNAME=127.0.0.1

# Remote configuration for testing and running on the Robotino
export ROS_MASTER_URI=http://172.26.1.1:11311
export ROS_HOSTNAME=172.26.1.X

# Robotino name, set to the number of our Robotino
export ROBOTINO_NAME=300252
