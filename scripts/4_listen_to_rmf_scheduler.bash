#!/usr/bin/env bash

source /ros2_ws/install/setup.bash 
ros2 topic echo --full-length /rmf_scheduler_api_responses
