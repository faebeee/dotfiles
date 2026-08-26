# dotfiles

Personal dotfiles. Each config lives in its own directory with a `setup.sh` (or similar) that symlinks/installs it into place — there's no central installer, so run the script inside each directory you want to apply.

## macOS

| Config | Description | Preview |
| --- | --- | --- |
| [`osx/aerospace`](./osx/aerospace) | Tiling window manager | ![aerospace](./osx/aerospace/aerospace.png) |
| [`osx/ghostty`](./osx/ghostty) | Terminal emulator | ![ghostty](./osx/ghostty/ghostty.png) |
| [`osx/sketchybar`](./osx/sketchybar) | Menu bar replacement | ![sketchybar](./osx/sketchybar/sketchybar.png) |
| [`osx/apps`](./osx/apps) | Homebrew CLI tool bootstrap | - |

## Linux

| Config | Description | Preview |
| --- | --- | --- |
| [`linux/arch`](./linux/arch) | Arch Linux app bootstrap | - |
| [`linux/fedora`](./linux/fedora) | Fedora app bootstrap | - |
| [`linux/ghostty`](./linux/ghostty) | Terminal emulator (Linux variant) | - |
| [`linux/chromium-apps`](./linux/chromium-apps) | Chrome/Chromium web app launchers | - |
| [`linux/noctalia-hypr`](./linux/noctalia-hypr) | Hyprland WM + Noctalia shell | ![noctalia-hypr](./linux/noctalia-hypr/noctalia/noctalia.png) |

## SketchyBar themes

- `osx/sketchybar/themes/` stores the available SketchyBar theme variants
- `osx/sketchybar/themes/mono.sh` is the default theme
- Set `THEME=<name>` before SketchyBar loads to switch themes, or add a new
  `themes/<name>.sh` file with the same variables to create a new look

## Shared

| Config | Description | Preview |
| --- | --- | --- |
| [`shared/btop`](./shared/btop) | btop theme setup | ![btop](./shared/btop/btop.png) |
| [`shared/nvim`](./shared/nvim) | Neovim (LazyVim-based) | ![nvim](./shared/nvim/nvim.png) |
| [`shared/tmux`](./shared/tmux) | Terminal multiplexer | ![tmux](./shared/tmux/tmux.png) |
| [`shared/zsh`](./shared/zsh) | Shell (oh-my-zsh) | ![zsh](./shared/zsh/zsh.png) |
| [`shared/git`](./shared/git) | Global git config | - |
| [`shared/wallpapers`](./shared/wallpapers) | Wallpaper collection | - |

## btop themes

- `shared/btop/themes/` stores the available `btop` theme variants
- `shared/btop/themes/muted-grey.theme` is the current theme
- `shared/btop/btop.png` shows the theme in use
- Run `shared/btop/setup.sh` to symlink the themes into `~/.config/btop/themes`
