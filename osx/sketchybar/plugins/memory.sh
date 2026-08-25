#!/bin/sh
# Memory usage widget (stands in for noctalia's sysmon_3 ram_used widget)

MEM=$(memory_pressure -Q 2>/dev/null | awk '/System-wide memory free percentage/ {print 100 - $NF"%"}')

if [ -z "$MEM" ]; then
  MEM="N/A"
fi

sketchybar --set "$NAME" label="$MEM"
