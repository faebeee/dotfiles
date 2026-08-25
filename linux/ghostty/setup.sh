rm -rf "$HOME/.config/ghostty/config"
ln -sf "$(pwd -P)/config" "$HOME/.config/ghostty/config"
rm -rf "$HOME/.config/ghostty/themes"
ln -sf "$(pwd -P)/themes" "$HOME/.config/ghostty/themes"
