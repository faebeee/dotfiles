if [ ! -d $HOME/.config/DankMaterialShell ]; then
  sudo -v && curl -fsSL https://install.danklinux.com | sh -s -- -c hyperland -t ghostty -y
fi

rm -rf "$HOME/.config/DankMaterialShell/"

cp -r "$(pwd -P)/DankMargalShell" $HOME/.config/
