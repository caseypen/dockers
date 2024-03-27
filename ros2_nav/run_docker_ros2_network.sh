xhost +
docker run -it --rm --gpus all \
    --network=ros2_network \
    --name="${1:-container1}" \
    --env="NVIDIA_DRIVER_CAPABILITIES=all" \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="/home/${USER}/codes":"/codes":rw  \
    ros2_aav \
    bash