#!/bin/sh

WIFI_STATUS=$(ipconfig getsummary en0 | awk -F' : ' '/ SSID/ { print $2 }')

if [ "$WIFI_STATUS" = "You are not associated with an AirPort network." ] || [ "$WIFI_STATUS" = "You are not connected to a network." ] || [ "$WIFI_STATUS" = "" ]; then
  ICON="󰤭"
  LABEL="Off"
else
  ICON="󰤨"
  LABEL="$WIFI_STATUS"
fi

sketchybar --set "$NAME" icon="$ICON" label="$LABEL"
