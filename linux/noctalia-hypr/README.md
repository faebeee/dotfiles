# Hyprland + Noctalia

Config for [Hyprland](https://hypr.land) window manager and the [Noctalia](https://github.com/noctalia-dev/noctalia-shell) shell, on Linux.

## Highlights

- `hypr/` is a Lua-based Hyprland config: entry point `hyprland.lua` + modules under `config/` for animations, autostart, colors, decorations, environment, inputs, misc, monitors, variables, windowrules, workspaces
- `config/binds.lua`: `SUPER`-key bindings for window focus/move/resize, workspace switching (1-9), launcher/terminal/browser/calculator, volume/brightness/media keys, screenshots, and Noctalia panel toggles (launcher, control center, session, wallpaper, clipboard)
- `noctalia.lua` wires up the Noctalia shell integration; `xdph.conf` configures `xdg-desktop-portal-hyprland`
- `noctalia/config.toml` and `noctalia/settings.toml` hold the shell's own configuration

## Setup

`setup.sh` symlinks `hypr/` to `~/.config/hypr` and `noctalia/config.toml` to `~/.config/noctalia/config.toml`. `noctalia/settings.toml` is **copied** (not symlinked) to `~/.local/state/noctalia/settings.toml` since the app mutates it at runtime, then reloads `hyprctl`.

`export-config.sh` runs `noctalia config export merged` to sync the live config back into the repo.
