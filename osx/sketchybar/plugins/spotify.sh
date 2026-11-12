#!/bin/sh

next() {
  osascript -e 'tell application "Spotify" to play next track'
}

back() {
  osascript -e 'tell application "Spotify" to play previous track'
}

play() {
  osascript -e 'tell application "Spotify" to playpause'
}

repeat() {
  REPEAT=$(osascript -e 'tell application "Spotify" to get repeating')
  if [ "$REPEAT" = "false" ]; then
    sketchybar -m --set spotify.repeat icon.highlight=on
    osascript -e 'tell application "Spotify" to set repeating to true'
  else
    sketchybar -m --set spotify.repeat icon.highlight=off
    osascript -e 'tell application "Spotify" to set repeating to false'
  fi
}

shuffle() {
  SHUFFLE=$(osascript -e 'tell application "Spotify" to get shuffling')
  if [ "$SHUFFLE" = "false" ]; then
    sketchybar -m --set spotify.shuffle icon.highlight=on
    osascript -e 'tell application "Spotify" to set shuffling to true'
  else
    sketchybar -m --set spotify.shuffle icon.highlight=off
    osascript -e 'tell application "Spotify" to set shuffling to false'
  fi
}

update() {
  # Only show the widget while Spotify is actually playing
  SPOTIFY_RUNNING=$(osascript -e 'application "Spotify" is running')
  STATE=""
  if [ "$SPOTIFY_RUNNING" = "true" ]; then
    STATE=$(osascript -e 'tell application "Spotify" to player state')
  fi

  if [ "$STATE" != "playing" ]; then
    sketchybar -m --set spotify.name drawing=off popup.drawing=off
    exit 0
  fi

  TRACK=$(osascript -e 'tell application "Spotify" to name of current track' | cut -c1-10)
  ARTIST=$(osascript -e 'tell application "Spotify" to artist of current track' | cut -c1-5)
  ALBUM=$(osascript -e 'tell application "Spotify" to album of current track' | cut -c1-15)
  SHUFFLE=$(osascript -e 'tell application "Spotify" to get shuffling')
  REPEAT=$(osascript -e 'tell application "Spotify" to get repeating')

  if [ "$ARTIST" = "" ]; then
    LABEL="${TRACK} ${ALBUM}"
  else
    LABEL="${TRACK} ${ARTIST}"
  fi

  sketchybar -m --set spotify.name label="$LABEL" label.drawing=on drawing=on \
    --set spotify.play icon=􀊆 \
    --set spotify.shuffle icon.highlight="$SHUFFLE" \
    --set spotify.repeat icon.highlight="$REPEAT"
}

mouse_clicked() {
  case "$NAME" in
    "spotify.next") next ;;
    "spotify.back") back ;;
    "spotify.play") play ;;
    "spotify.shuffle") shuffle ;;
    "spotify.repeat") repeat ;;
    *) exit ;;
  esac
}

case "$SENDER" in
  "mouse.clicked") mouse_clicked ;;
  "forced") exit ;;
  *) update ;;
esac
