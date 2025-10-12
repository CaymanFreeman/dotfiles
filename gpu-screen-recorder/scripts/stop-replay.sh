#!/bin/bash

pkill -SIGINT gpu-screen-recorder && sleep 0.2 && notify-send -t 1500 -u low -- "GPU Screen Recorder" "Replay stopped"