#!/usr/bin/env bash

source /ros2_ws/install/setup.bash
ros2 topic pub -1 /rmf_scheduler_api_requests rmf_task_msgs/msg/ApiRequest \
  '{
    "request_id": "'$(uuidgen)'",
    "json_msg": "{
      \"type\": \"get\",
      \"payload\": {}
    }"
  }'
