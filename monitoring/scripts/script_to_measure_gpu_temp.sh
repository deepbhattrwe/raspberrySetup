#!/bin/bash
while true; do
  /usr/bin/vcgencmd measure_temp | awk -F"=" '{print $2}' | awk -F"'" '{print $1}' > /home/dsb00/DockerSwarmConfig/monitoring/scripts/gpu_temp.txt
  sleep 10
done

#this script is used to measure the gpu temperature and write it to a file.
# the script is running by a linux service that starts automatically on boot up.
# to check status of service: sudo systemctl status gpu_temp.service.
# to start service: sudo systemctl start gpu_temp.service.
# to stop service: sudo systemctl stop gpu_temp.service.