#!/usr/bin/env bash

export RCUTILS_COLORIZED_OUTPUT=1

docker run -it --rm \
    --name rmf_scheduler_c \
    --network host \
rmf_scheduler:humble bash -c "source /ros2_ws/install/setup.bash && ros2 launch rmf_scheduler_ros2 example.launch.xml"
    # -e RMW_IMPLEMENTATION=rmw_cyclonedds_cpp \
