#!/usr/bin/env bash
# AeroSpace workspace indicator.
#
# Unfocused workspaces render as a plain dot; the focused one renders as its
# name on a highlighted pill. Recomputes the state of every
# `space.<WORKSPACE>` item in a single sketchybar call. Driven by the hidden
# `spaces_watcher` item, which is subscribed to the
# `aerospace_workspace_change` event triggered from `exec-on-workspace-change`
# in ~/.aerospace.toml (plus front_app_switched and system_woke as a safety
# net).

CONFIG_DIR="${CONFIG_DIR:-$HOME/.config/sketchybar}"
THEME_DIR="$CONFIG_DIR/themes"
THEME="${THEME:-noctalia}"
# shellcheck source=../themes/noctalia.sh
source "$THEME_DIR/$THEME.sh"

command -v aerospace >/dev/null 2>&1 || exit 0

# $FOCUSED_WORKSPACE is passed along by the aerospace callback; fall back to
# querying when the script runs for another reason (startup, wake, ...).
FOCUSED="${FOCUSED_WORKSPACE:-$(aerospace list-workspaces --focused)}"

ALL=$(aerospace list-workspaces --all)
NON_EMPTY=$(aerospace list-workspaces --monitor all --empty no)

args=()

while read -r ws; do
  [ -n "$ws" ] || continue

  if [ "$ws" = "$FOCUSED" ]; then
    # Focused workspace: name spelled out on a highlighted pill, no dot.
    args+=(--set "space.$ws"
      drawing=on
      icon.drawing=off
      label.color="$COLOR_WORKSPACE_ACTIVE"
      label.drawing=on
      background.drawing=on
      background.color="$COLOR_WORKSPACE_ACTIVE_BG")
    continue
  fi

  # Unfocused: collapsed to a plain dot. Hidden entirely when empty unless
  # the theme asks for every workspace to stay visible.
  drawing=on
  if [ "$SHOW_EMPTY_WORKSPACES" != "true" ] &&
    ! grep -qxF "$ws" <<<"$NON_EMPTY"; then
    drawing=off
  fi

  args+=(--set "space.$ws"
    drawing="$drawing"
    icon.drawing=on
    icon.color="$COLOR_WORKSPACE_INACTIVE"
    label.drawing=off
    background.drawing=off)
done <<<"$ALL"

[ ${#args[@]} -gt 0 ] && sketchybar "${args[@]}"
