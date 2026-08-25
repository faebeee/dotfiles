sudo pacman -S ghostty \
  nautilus \
  lazygit \
  virtualbox \
  virtualbox-guest-utils-nox \
  tmux \
  zsh \
  nvim \
  chromium-browser zen-browser-bin \
  podman \
  podman-desktop \
  steam \
  pika-backup \
  spotify-launcher \
  nvm \
  fzf \
  ufw

# ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# OPENCODE
curl -fsSL https://opencode.ai/install | bash

# Enable firewall
sudo ufw enable
