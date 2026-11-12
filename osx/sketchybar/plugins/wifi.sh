#!/bin/sh

# The bar item only shows the connected/disconnected icon. The SSID is shown
# in the wifi.ssid popup item, which is revealed by clicking the icon.

WIFI_STATUS=$(ipconfig getsummary en0 | awk -F' : ' '/ SSID/ { print $2 }')

if [ "$WIFI_STATUS" = "You are not associated with an AirPort network." ] || [ "$WIFI_STATUS" = "You are not connected to a network." ] || [ "$WIFI_STATUS" = "" ]; then
  ICON="󰤭"
  SSID="Not connected"
else
  ICON="󰤨"
  SSID="$WIFI_STATUS"
fi

sketchybar --set wifi icon="$ICON" \
  --set wifi.ssid label="$SSID"
