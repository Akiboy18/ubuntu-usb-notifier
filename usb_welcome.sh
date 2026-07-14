#!/bin/bash
# -------------------------------------------------------------------
# Ubuntu USB Custom Greeting Script
# Setup: 
# 1. Run 'lsblk -o NAME,LABEL,UUID' to find your drive's UUID.
# 2. Replace 'YOUR_USB_UUID_HERE' below with your actual UUID.
# 3. Add this script to your Ubuntu 'Startup Applications'.
# -------------------------------------------------------------------

DRIVE_PRESENT=0

while true; do
    # Check if your specific drive is connected
    if lsblk -o UUID | grep -q "YOUR_USB_UUID_HERE"; then
        if [ $DRIVE_PRESENT -eq 0 ]; then
            # Play a system chime and send the notification
            paplay /usr/share/sounds/ubuntu/stereo/desktop-login.ogg &
            notify-send "INVICTUS Connected" "Daddy's Home" --icon=user-info -t 0
            
            DRIVE_PRESENT=1
        fi
    else
        DRIVE_PRESENT=0
    fi
    sleep 1
done
