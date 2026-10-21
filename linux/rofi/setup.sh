rm -rf "$HOME/.config/rofi"
mkdir -p "$HOME/.config/rofi"
ln -sf "$(pwd -P)/config.rasi" "$HOME/.config/rofi/config.rasi"
ln -sf "$(pwd -P)/theme.rasi" "$HOME/.config/rofi/theme.rasi"
