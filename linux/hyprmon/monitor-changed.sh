#!/usr/bin/env bash
#
# Triggered by Hyprland's monitoradded/monitorremoved events.
# Cycles through all available hyprmon profiles each time it is called.

mapfile -t profiles < <(hyprmon -list-profiles | sed 's/ \*$//')
profile_count="${#profiles[@]}"

if [[ "$profile_count" -eq 0 ]]; then
  exit 0
fi

active_profile="$(hyprmon -active-profile)"

current_index=-1
for i in "${!profiles[@]}"; do
  if [[ "${profiles[$i]}" == "$active_profile" ]]; then
    current_index="$i"
    break
  fi
done

next_index=$(( (current_index + 1) % profile_count ))
next_profile="${profiles[$next_index]}"

hyprmon -profile "$next_profile"
