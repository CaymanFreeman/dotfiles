#!/bin/bash

killall -SIGINT gpu-screen-recorder && sleep 0.2 && notify-send -t 5000 -u low -- "Replay Stopped" "($0)"