# Use the humble desktop image as the base
FROM osrf/ros:humble-desktop

# Change the default shell to Bash
SHELL ["/bin/bash", "-c"]

# Install packages, including Python packages and system dependencies
RUN apt-get update && \
    apt-get install -y vim python3-pip tmux git iputils-ping cmake build-essential && \
    apt-get install -y ros-humble-tf-transformations ros-humble-robot-localization && \
    pip3 install transform3d transforms3d utm pymap3d pygame setuptools==58.2.0 transformations && \
    rm -rf /var/lib/apt/lists/*

# Ensure the CMakeLists.txt file is present
RUN if [! -f "/codes/acados/CMakeLists.txt"]; then echo "CMakeLists.txt not found"; exit 1; fi

# Create build directory, configure, and compile acados
COPY ./acados /codes/acados
RUN mkdir -p /codes/acados/build && \
    cd /codes/acados/build && \
    cmake .. && \
    make -j4

# Install Python interfaces
RUN cd /codes/acados/interfaces/acados_template/ && \
    pip3 install -e .

# Environment variables
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/codes/acados/lib
ENV ACADOS_SOURCE_DIR=/codes/acados
ENV ROS_MAIN_ID=0

# Ensure ROS environment variables are set when launching the container
RUN echo 'source /opt/ros/humble/setup.bash' >> ~/.bashrc

# for ROS2
RUN source /opt/ros/humble/setup.bash 
ENV export ROS_MAIN_ID=0

RUN apt-get update
# RUN apt-get upgrade
RUN apt-get install -y ros-humble-xacro
RUN pip install numba
RUN pip install shapely 
RUN pip install pandas
RUN apt-get install ros-humble-robot-localization

