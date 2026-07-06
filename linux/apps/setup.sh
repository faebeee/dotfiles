installApp() {
  APP=$1
  if ! [ -x "$(command -v $APP)" ]; then
    echo "$APP not found. Start install..."
    sudo dnf install -y $APP
  fi
}

echo "####################"
echo "  INSTALLING APPS "
echo "####################"

installApp chromium-browser
installApp snap
installApp fzf

if ! [ -x "$(command -v lazygit)" ]; then
  echo "lazygit not found. Start install..."
  sudo dnf copr enable dejan/lazygit
  sudo dnf install lazygit
fi

if ! [ -x "$(command -v spotify)" ]; then
  echo "spotify not found. Start install..."
  snap install spotify
fi

if ! [ -x "$(command -v nvm)" ]; then
  echo "nvm not found. Start install..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.5/install.sh | bash
fi

if ! [ -x "$(command -v opencode)" ]; then
  echo "opencode not found. Start install..."
  curl -fsSL https://opencode.ai/install | bash
fi

if ! [ -x "$(command -v obsidian)" ]; then
  echo "obsidian not found. Start install..."
  flatpak install obsidian
fi

if ! [ -x "$(command -v nordvpn)" ]; then
  echo "nordvpn not found. Start install..."
  sh <(wget -qO - https://downloads.nordcdn.com/apps/linux/install.sh) -p nordvpn-gui
fi

if ! [ -x "$(command -v pika)" ]; then
  echo "pika not found. Start install..."
  flatpak install org.gnome.World.PikaBackup
fi

./remove-unused.sh
