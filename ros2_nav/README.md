# Docker for robot development 
Ubuntu 22.04  
ROS humble  

#### Install docker


#### Build docker 
```bash
# Build docker: the image name 
./build_docker.sh

```

#### Create a folder codes under host machine home directory

```bash
# reload cuda
mkdir ~/codes # this folder will be mounted in the container and share the contents
```

#### If you want to use nvidia-card
[Install nvidia container toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installing-with-apt)

```bash
# reload cuda
sudo rmmod nvidia_uvm
sudo modprobe nvidia_uvm
```
#### Start a docker container
```bash
# Run docker with display 
./run_docker.sh
# you have to use tmux for running different nodes in ROS2
```
Here are the [cheatsheet for tmux](https://tmuxcheatsheet.com/), for most of application case, you can refer to the "panes setting".

#### Two containers share the network (Not recommended)
1. In the host terminal
```bash
# Run docker with display 
docker network create ros2_network

```
2. Run the docker to apply the same network
```bash
# Run docker with display 
./run_docker_ros2_network.sh container_name

```