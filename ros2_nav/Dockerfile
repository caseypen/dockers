FROM osrf/ros:humble-desktop
 
# Change the default shell to Bash
SHELL [ "/bin/bash" , "-c" ]
 
# Install Git
RUN apt-get update 
RUN apt-get install -y python-is-python3 python3-pip tmux ros-dev-tools ros-humble-tf-transformations iputils-ping
RUN pip install transform3d
RUN pip3 install transforms3d
RUN pip install utm
RUN pip install pymap3d
RUN pip install pygame

# for ROS2
RUN source /opt/ros/humble/setup.bash 
ENV export ROS_MAIN_ID=0
