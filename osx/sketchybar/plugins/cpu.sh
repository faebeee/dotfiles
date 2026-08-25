#!/bin/sh
# CPU usage widget (stands in for noctalia's sysmon_2 gpu/cpu widget)

CPU=$(top -l 1 -n 0 | awk -F'[:,]' '/CPU usage/ {gsub(/[^0-9.]/,"",$2); print $2}')

sketchybar --set "$NAME" label="${CPU:-0}%"
