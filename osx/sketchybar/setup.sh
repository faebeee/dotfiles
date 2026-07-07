if [ -f "$HOME/.config/sketchybar" ]; then
  echo "Backing up existing sketchybar config to $HOME/.config/sketchybar.bak"
  cp "$HOME/.config/sketchybar" "$HOME/.config/sketchybar.bak"
fi

rm -rf $HOME/.config/sketchybar
ln -sf "$(pwd -P)/." $HOME/.config/sketchybar
