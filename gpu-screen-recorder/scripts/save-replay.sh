#!/bin/bash

killall -SIGUSR1 gpu-screen-recorder && sleep 0.2 && notify-send -t 5000 -u low -a "GPU Screen Recorder" -i "com.dec05eba.gpu_screen_recorder" -- "Replay Saved" "($0)"