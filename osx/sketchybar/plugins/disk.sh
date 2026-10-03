#!/bin/sh
# Free disk space widget for the boot volume

FREE=$(df -H / | awk 'NR == 2 {gsub(/G$/, "", $4); print $4}')

if [ -z "$FREE" ]; then
  FREE="N/A"
else
  FREE="${FREE}G"
fi

sketchybar --set "$NAME" label="$FREE"
