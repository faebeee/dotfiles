#!/usr/bin/env bash
# Monochrome theme (default)
# Solid black bar, white foreground, no widget backgrounds/borders.

##############################
#  Colors                    #
##############################

# The bar itself is transparent; the visible surfaces are the three "islands"
# (brackets) drawn behind the left/center/right item groups.
COLOR_BAR_BG=0x00000000
COLOR_ISLAND_BG=0xff000000
COLOR_ISLAND_BORDER=0x33ffffff
COLOR_ICON=0xffffffff
COLOR_LABEL=0xffffffff
COLOR_POPUP_BG=0xff000000

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

COLOR_WORKSPACE_ACTIVE=0xffffffff
COLOR_WORKSPACE_ACTIVE_BG=0x40ffffff
COLOR_WORKSPACE_INACTIVE=0x99ffffff

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
