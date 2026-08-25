sudo pacman -S ghostty \
  nautilus \
  lazygit \
  virtualbox \
  tmux \
  zsh \
  nvim \
  chromium-browser zen-browser-bin \
  podman \
  podman-desktop \
  steam \
  pika-backup \
  spotify-launcher \
  fzf

# ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# OPENCODE
curl -fsSL https://opencode.ai/install | bash
