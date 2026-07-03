installApp() {
  APP=$1
  if ! [ -x "$(command -v $APP)" ]; then
    echo "$APP not found. Start install..."
    sudo dnf install $APP
  fi
}

installApp chromium-browser
installApp snap

if ! [ -x "$(command -v lazygit)" ]; then
  echo "lazygit not found. Start install..."
  sudo dnf copr enable dejan/lazygit
  sudo dnf install lazygit
fi

if ! [ -x "$(command -v spotify)" ]; then
  echo "spotify not found. Start install..."
  snap install spotify
fi

./remove-unused.sh
