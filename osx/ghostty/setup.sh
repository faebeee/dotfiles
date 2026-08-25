rm -rf "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
ln -sf "$(pwd -P)/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
rm -rf "$HOME/Library/Application Support/com.mitchellh.ghostty/themes"
ln -sf "$(pwd -P)/themes" "$HOME/Library/Application Support/com.mitchellh.ghostty/themes"
