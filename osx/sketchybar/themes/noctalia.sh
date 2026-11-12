#!/usr/bin/env bash
# Noctalia theme
# Synced with the current Noctalia (Hyprland) colorscheme: dark navy bar with
# a warm gold accent for icon/label foreground and a lighter navy popup bg.
# Colors sourced from the live-generated Noctalia palette (see
# shared/btop/themes/noctalia.theme and ~/.local/share/color-schemes/noctalia.colors).

##############################
#  Colors                    #
##############################

COLOR_BAR_BG=0xff0c1017
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

BAR_HEIGHT=36
BAR_MARGIN=16
BAR_PADDING_LEFT=8
BAR_PADDING_RIGHT=8
BAR_CORNER_RADIUS=0
BAR_BORDER_WIDTH=0
BAR_BLUR_RADIUS=0
BAR_Y_OFFSET=8

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
#  Popups                     #
##############################

POPUP_CORNER_RADIUS=8
POPUP_BORDER_WIDTH=0

##############################
#  Notch                      #
##############################
# On MacBooks with a notch, the center group (spotify/cpu/memory) can end up
# hidden behind it. Set NOTCH_SPACING=true to place that group in the left
# section (after the launcher) instead of centering it under the notch.

NOTCH_SPACING=false
