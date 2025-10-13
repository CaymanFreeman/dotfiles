#!/bin/bash

killall -SIGUSR1 gpu-screen-recorder && sleep 0.2 && notify-send -t 5000 -u low -- "Replay Saved" "($0)"