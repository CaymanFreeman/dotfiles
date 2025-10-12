#!/bin/bash

OUTPUT_DIRECTORY="$HOME/Videos"
CLIP_LENGTH_SECONDS="90"
RESTART_ON_SAVE="no"
WINDOW="portal"
CONTAINER_FORMAT="mp4"
OUTPUT_RESOLUTION="2560x1440"
FRAME_RATE="60"
AUDIO_SOURCE="default_output|default_input"
BITRATE_KBPS="75000" # Kilobits per second
VIDEO_CODEC="hevc_10bit"
AUDIO_CODEC="opus"

flatpak run --command=gpu-screen-recorder com.dec05eba.gpu_screen_recorder -w $WINDOW -c $CONTAINER_FORMAT -s $OUTPUT_RESOLUTION -fm cfr -f $FRAME_RATE -a $AUDIO_SOURCE -bm cbr -q $BITRATE_KBPS -r $CLIP_LENGTH_SECONDS -restart-replay-on-save $RESTART_ON_SAVE -k $VIDEO_CODEC -ac $AUDIO_CODEC -o $OUTPUT_DIRECTORY && sleep 0.2 && notify-send -t 1500 -u low -- "GPU Screen Recorder" "Replay started"