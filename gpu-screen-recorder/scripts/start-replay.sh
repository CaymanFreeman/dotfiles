#!/bin/bash

OUTPUT_DIRECTORY="$HOME/Videos/Clips"
CLIP_LENGTH_SECONDS="90"
RESTART_ON_SAVE="no"
WINDOW="portal"
CONTAINER_FORMAT="mp4"
OUTPUT_RESOLUTION="2560x1440"
FRAME_RATE="60"
BITRATE_KBPS="75000" # Kilobits per second
VIDEO_CODEC="hevc_10bit"
AUDIO_CODEC="opus"

AUDIO_INPUT=$(flatpak run --command=gpu-screen-recorder com.dec05eba.gpu_screen_recorder --list-audio-devices | awk -F'|' '/^NoiseTorch/ {print $1; exit}')
if [ -z "$AUDIO_INPUT" ]; then
    AUDIO_INPUT="default_input"
fi

AUDIO_SOURCE="default_output|$AUDIO_INPUT"

notify-send -t 5000 -u low -a "GPU Screen Recorder" -i "com.dec05eba.gpu_screen_recorder" -- "Replay Started" "($0)"

flatpak run --command=gpu-screen-recorder com.dec05eba.gpu_screen_recorder -w $WINDOW -restore-portal-session no -c $CONTAINER_FORMAT -s $OUTPUT_RESOLUTION -fm cfr -f $FRAME_RATE -a "$AUDIO_SOURCE" -bm cbr -q $BITRATE_KBPS -r $CLIP_LENGTH_SECONDS -restart-replay-on-save $RESTART_ON_SAVE -k $VIDEO_CODEC -ac $AUDIO_CODEC -o $OUTPUT_DIRECTORY