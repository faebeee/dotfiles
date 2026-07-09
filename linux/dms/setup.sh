if [ ! -d ~/.config/DankMaterialShell ]; then
  sudo -v && curl -fsSL https://install.danklinux.com | sh -s -- -c hyperland -t ghostty -y
fi

mv "$HOME/.config/DankMaterialShell/" "$HOME/.config/backup_DankMaterialShell/"

ln -sf "$(pwd -P)/DankMaterialShell" $HOME/.config/DankMaterialShell
