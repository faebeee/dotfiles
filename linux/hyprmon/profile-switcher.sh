#!/usr/bin/env bash
#
# Rofi picker to switch between hyprmon monitor profiles.
#
# Self-healing: if no monitor is currently active (e.g. the active profile
# disabled the laptop panel but the external monitor isn't connected), the
# laptop panel is force-enabled first so the picker has somewhere to render.

set -euo pipefail

ROFI_THEME="$HOME/.config/rofi/theme.rasi"
LAPTOP_MONITOR="eDP-1"

# Make sure at least one monitor is active so rofi can actually be shown.
active_count="$(hyprctl monitors -j | jq 'length')"
if [[ "$active_count" -eq 0 ]]; then
  hyprctl keyword monitor "${LAPTOP_MONITOR},preferred,auto,1"
fi

active_profile="$(hyprmon -active-profile)"

# Build the menu, marking the currently active profile.
menu=""
while IFS= read -r profile; do
  profile="${profile%\ \*}"
  if [[ "$profile" == "$active_profile" ]]; then
    menu+="${profile} (active)"$'\n'
  else
    menu+="${profile}"$'\n'
  fi
done < <(hyprmon -list-profiles)

selection="$(printf '%s' "$menu" | rofi -dmenu -p "Monitor Profile" -theme "$ROFI_THEME")"

# Esc / empty selection: do nothing.
if [[ -z "$selection" ]]; then
  exit 0
fi

selection="${selection% (active)}"

hyprmon -profile "$selection"
