#!/usr/bin/env bash
# Muted grey theme
# Soft dark-grey bar, muted light-grey foreground, no widget backgrounds/borders.

##############################
#  Colors                    #
##############################

COLOR_BAR_BG=0xff2b2b2e
COLOR_ICON=0xffd4d4d8
COLOR_LABEL=0xffd4d4d8
COLOR_POPUP_BG=0xff2b2b2e

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
