#!/usr/bin/env bash
#
# Triggered by Hyprland's monitoradded/monitorremoved events.
# Applies a specific hyprmon profile when only the main laptop screen
# (eDP-1) is connected.

LAPTOP_MONITOR="eDP-1"
LAPTOP_ONLY_PROFILE="Laptop Only"

connected_monitors="$(hyprctl monitors -j | jq -r '.[].name')"
monitor_count="$(wc -l <<<"$connected_monitors")"

if [[ "$monitor_count" -eq 1 && "$connected_monitors" == "$LAPTOP_MONITOR" ]]; then
  hyprmon -profile "$LAPTOP_ONLY_PROFILE"
fi
