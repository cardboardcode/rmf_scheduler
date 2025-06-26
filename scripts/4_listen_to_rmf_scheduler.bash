#!/usr/bin/env bash

docker exec -it rmf_scheduler_c bash -c "source /ros2_ws/install/setup.bash && ros2 topic echo --full-length /rmf_scheduler_api_responses"
