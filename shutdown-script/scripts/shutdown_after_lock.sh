#!/bin/bash

# Check if the screen is locked
locked=$(loginctl show-session $(loginctl | grep $(whoami) | awk '{print $1}') -p LockedHint | cut -d= -f2)

# Check how long the session has been idle (in microseconds)
idle_usec=$(loginctl show-session $(loginctl | grep $(whoami) | awk '{print $1}') -p IdleSinceHint | cut -d= -f2)

# Convert to seconds
idle_sec=$((idle_usec / 1000000))

# If locked and idle for more than 3600 seconds (1 hour), shut down
if [ "$locked" = "yes" ] && [ "$idle_sec" -ge 3600 ]; then
    systemctl poweroff
fi
