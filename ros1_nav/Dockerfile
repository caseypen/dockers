FROM osrf/ros:noetic-desktop-full
 
# Change the default shell to Bash
SHELL [ "/bin/bash" , "-c" ]
 
# Install Git
RUN apt-get update && apt-get install -y git
RUN apt-get install -y ros-noetic-gazebo-ros-control
RUN apt-get install -y ros-noetic-joint-trajectory-controller ros-noetic-position-controllers ros-noetic-ackermann-steering-controller ros-noetic-diff-drive-controller 
RUN apt-get install -y ros-noetic-velocity-controllers
RUN apt-get install -y ros-noetic-controller-interface  ros-noetic-gazebo-ros-control ros-noetic-joint-state-controller ros-noetic-effort-controllers 
RUN apt-get install -y ros-noetic-ddynamic-reconfigure
RUN apt-get install -y python-is-python3
RUN apt-get update && apt-get install -y ros-noetic-moveit
RUN apt install -y ros-noetic-catkin python3-catkin-tools python3-wstool
RUN apt install -y ros-noetic-joy-teleop ros-noetic-spacenav-node ros-noetic-rosparam-shortcuts ros-noetic-joy libqt5x11extras5-dev ros-noetic-graph-msgs ros-noetic-code-coverage ros-noetic-franka-description
RUN apt install -y ros-noetic-pinocchio
RUN apt install -y ros-noetic-trac-ik-kinematics-plugin ros-noetic-rviz-visual-tools ros-noetic-moveit-visual-tools
RUN apt install -y python3-pybind11
RUN apt install -y python3-pip python-is-python3
RUN apt install -y libboost-all-dev libeigen3-dev liburdfdom-dev
RUN apt install -y iputils-ping
RUN apt install -y ros-$ROS_DISTRO-realsense2-camera
RUN pip install notebook
RUN pip install ultralytics 
RUN pip install open3d
RUN pip install dill
RUN apt-get install -y python-lxml
RUN apt-get install -y ros-noetic-moveit-resources-panda-moveit-config
RUN apt install -y ros-noetic-moveit-servo
RUN apt install -y ros-noetic-usb-cam
RUN apt install -y ros-noetic-libuvc-camera
RUN pip install diffusers==0.18.2 scikit-image==0.19.3 scikit-video==1.1.11 zarr==2.12.0 numcodecs==0.10.2 pygame pymunk==6.2.1 gym==0.26.2 shapely
RUN pip install click
# RUN apt-get install -y ros-noetic-moveit*

# Create a Catkin workspace and clone TurtleBot3 repos
RUN echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc


RUN pip install transitions
RUN pip install pyquaternion
RUN pip install pyyaml
RUN pip install pexpect
RUN pip install mujoco
RUN pip install dm_control
RUN pip install einops
RUN pip install packaging
RUN pip install h5py
RUN pip install robomimic
RUN pip install -U numpy

RUN apt-get install -y psmisc libmodbus-dev udev
RUN apt install -y ros-${ROS_DISTRO}-plotjuggler-ros

RUN ln -s /usr/include/eigen3/Eigen /usr/include/Eigen
ENV ROS_IP=127.0.0.1 
ENV ROS_HOSTNAME=127.0.0.1
RUN source /opt/ros/noetic/setup.bash 