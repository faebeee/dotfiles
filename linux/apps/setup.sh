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
installApp nvim
installApp lsd
installApp zsh
installApp discord
installApp nautilus
installApp virt-manager

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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
  flatpak remote-add --if-not-exists flathub https://flathub.org
  flatpak install org.gnome.World.PikaBackup
fi

if ! [ -x "$(command -v RustDesk)" ]; then
  echo "RustDesk not found. Start install..."
  flatpak install com.rustdesk.RustDesk
fi

if ! [ -x "$(command -v gh)" ]; then
  echo "gh cli not found. Start install..."
  sudo dnf install 'dnf-command(config-manager)'
  sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
  sudo dnf install ghf
fi
