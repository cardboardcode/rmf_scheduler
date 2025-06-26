#!/usr/bin/env bash

source /ros2_ws/install/setup.bash 

echo $(date "+%s")

ros2 topic pub -1 /rmf_scheduler_api_requests rmf_task_msgs/msg/ApiRequest \
  '{
    "request_id": "'$(uuidgen)'",
    "json_msg": "{
      \"type\": \"add\",
      \"payload\": {
        \"events\": {
          \"'$(uuidgen)'\": {
            \"type\": \"rmf/go_to_place\",
            \"description\": \"Test Go to place\",
            \"start_time\": '$(date "+%s")',
            \"event_details\": {}
          }
        },
        \"dependencies\": {},
        \"series\": {}
      }
    }"
  }'
