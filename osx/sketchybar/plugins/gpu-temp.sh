#!/bin/sh
# Memory usage widget (stands in for noctalia's sysmon_3 ram_used widget)

MEM=$(smctemp -g)

if [ -z "$MEM" ]; then
  MEM="N/A"
fi

sketchybar --set "$NAME" label="$MEM"
