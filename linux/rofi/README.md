# Rofi (Linux)

Config for [rofi](https://github.com/davatorium/rofi), used as the app launcher on Hyprland (replaces the Noctalia launcher panel on `SUPER + Space`, see [`../noctalia-hypr`](../noctalia-hypr)).

## Highlights

- `config.rasi`: `drun`/`run`/`window` modi, Papirus icons, JetBrainsMono Nerd Font
- `theme.rasi`: colors matched to the active Noctalia theme (`noctalia-hypr/hypr/noctalia.lua`) for visual consistency
- Rofi 2.0+ has native Wayland support, no `rofi-wayland` package needed

## Setup

`setup.sh` symlinks `config.rasi` and `theme.rasi` into `~/.config/rofi/`.

Bound to `SUPER + Space` via `hl.bind` in `../noctalia-hypr/hypr/config/binds.lua`.
