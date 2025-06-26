#!/usr/bin/env bash

export RCUTILS_COLORIZED_OUTPUT=1

docker run -it --rm \
    --name rmf_scheduler_c \
    --network host \
    -v ./scripts:/ros2_ws/scripts \
    -v ./rmf_scheduler_ros2/src/scheduler_node.cpp:/ros2_ws/src/rmf_scheduler/rmf_scheduler_ros2/src/scheduler_node.cpp \
rmf_scheduler:humble bash -c "source /ros2_ws/install/setup.bash && /bin/bash"
