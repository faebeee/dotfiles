#!/usr/bin/env bash
# Noctalia theme
# Synced with the current Noctalia (Hyprland) colorscheme: dark navy bar with
# a warm gold accent for icon/label foreground and a lighter navy popup bg.
# Colors sourced from the live-generated Noctalia palette (see
# shared/btop/themes/noctalia.theme and ~/.local/share/color-schemes/noctalia.colors).

##############################
#  Colors                    #
##############################

# The bar itself is transparent; the visible surfaces are the three "islands"
# (brackets) drawn behind the left/center/right item groups.
COLOR_BAR_BG=0x00000000
COLOR_ISLAND_BG=0xff0c1017
COLOR_ISLAND_BORDER=0x33c4a82e
COLOR_ICON=0xffc4a82e
COLOR_LABEL=0xff5c8ac4
COLOR_POPUP_BG=0xff202837

##############################
#  Fonts                     #
##############################

FONT_ICON="Symbols Nerd Font:Regular:14.0"
FONT_LABEL="JetBrainsMono Nerd Font Light:Regular:13.0"

FONT_SIZE_ICON=14.0
FONT_SIZE_LABEL=13.0

##############################
#  Bar geometry               #
##############################

BAR_HEIGHT=40
BAR_MARGIN=12
BAR_PADDING_LEFT=0
BAR_PADDING_RIGHT=0
BAR_CORNER_RADIUS=0
BAR_BORDER_WIDTH=0
BAR_BLUR_RADIUS=0
BAR_Y_OFFSET=6

##############################
#  Islands (brackets)         #
##############################
# Each group of items sits on its own rounded "island" instead of one
# continuous bar.

ISLAND_CORNER_RADIUS=12
ISLAND_BORDER_WIDTH=1
ISLAND_HEIGHT=30
ISLAND_PADDING=6
ISLAND_SHADOW=on

##############################
#  Item spacing               #
##############################

ITEM_PADDING_LEFT=6
ITEM_PADDING_RIGHT=6

ICON_PADDING_LEFT=8
ICON_PADDING_RIGHT=3
LABEL_PADDING_LEFT=3
LABEL_PADDING_RIGHT=8

##############################
#  Workspaces (AeroSpace)     #
##############################
# Colors for the workspace indicator in the left island. The focused
# workspace gets a highlighted pill; the others are dimmed.

COLOR_WORKSPACE_ACTIVE=0xffc4a82e
COLOR_WORKSPACE_ACTIVE_BG=0x80c4a82e
COLOR_WORKSPACE_INACTIVE=0xff5c8ac4

WORKSPACE_CORNER_RADIUS=8
WORKSPACE_HEIGHT=22

# Unfocused workspaces collapse to a plain dot; the focused one shows its
# name instead.
WORKSPACE_DOT_ICON=●
WORKSPACE_DOT_FONT_SIZE=26.0

# Tight spacing so the dots read as a cluster; the focused pill gets its own
# roomier padding around the name.
WORKSPACE_ICON_PADDING=2
WORKSPACE_ITEM_PADDING=2
WORKSPACE_LABEL_PADDING=8

# Show workspaces that have no windows (and aren't focused).
SHOW_EMPTY_WORKSPACES=false

# Safety-net poll (seconds) for workspace occupancy. Most changes arrive as
# events; this catches the rest (apps quitting in a background workspace,
# `aerospace` invoked from a shell, ...). Set to 0 to rely on events only.
WORKSPACE_POLL_FREQ=5

##############################
#  Popups                     #
##############################

POPUP_CORNER_RADIUS=8
POPUP_BORDER_WIDTH=0

##############################
#  Notch                      #
##############################
# On MacBooks with a notch, the center island (spotify/sysmon) can end up
# hidden behind it. Set NOTCH_SPACING=true to move that island into the left
# section (after the launcher) instead of centering it under the notch.

NOTCH_SPACING=false
