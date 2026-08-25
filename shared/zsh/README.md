# Zsh

Config for [Zsh](https://www.zsh.org) using [oh-my-zsh](https://ohmyz.sh).

![zsh](./zsh.png)

## Highlights

- `agnoster` theme
- oh-my-zsh plugins: `ssh-agent`, `git`, `dnf`, plus `zsh-autosuggestions` and `zsh-syntax-highlighting`
- Runs [`fastfetch`](https://github.com/fastfetch-cli/fastfetch) on interactive shell start
- FZF key bindings (`Ctrl-R`)
- [`lsd`](https://github.com/lsd-rs/lsd) aliases (`ls`, `l`, `la`, `lla`, `lt`)
- `nvm` setup and `opencode` on `PATH`

## Setup

`setup.sh` backs up any existing `.zshrc`, symlinks `.zshrc` to `~/.zshrc`, and installs `zsh-autosuggestions`/`zsh-syntax-highlighting` into the oh-my-zsh custom dir if missing.
