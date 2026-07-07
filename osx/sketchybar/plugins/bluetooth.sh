#!/bin/sh

BLUETOOTH_STATUS=$(system_profiler SPBluetoothDataType -json | jq -r '.SPBluetoothDataType[0].controller_properties.controller_state')
BLUETOOTH_DEVICE=$(system_profiler SPBluetoothDataType -json | jq -r '.SPBluetoothDataType[0].device_connected | length > 0')

if [ "$BLUETOOTH_STATUS" = 'attrib_off' ]; then
  ICON="󰂲"
fi

if [ "$BLUETOOTH_DEVICE" = "false" ] && [ "$BLUETOOTH_STATUS" = 'attrib_on' ]; then
  ICON="󰂯"
else
  ICON="󰂱"
fi

sketchybar --set "$NAME" icon="$ICON"
