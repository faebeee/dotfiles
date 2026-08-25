# Ghostty (Linux)

Config for [Ghostty](https://ghostty.org), a terminal emulator.

## Highlights

- `Blazer` theme (same as the [macOS variant](../../osx/ghostty)), Linux-specific window settings
- `window-decoration=false`, `gtk-titlebar=false`, `gtk-single-instance=true`
- Font size `12`, block cursor with blink, scrollback limit `3023`
- Custom keybinds: new window/tab, font size +/-, `shift+enter` for newline
- `shell-integration` set to `detect`

## Setup

`setup.sh` symlinks `config` to `~/.config/ghostty/config`.
