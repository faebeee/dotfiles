# SketchyBar

Config for [SketchyBar](https://github.com/FelixKratz/SketchyBar), a customizable macOS menu bar replacement.

![sketchybar](./sketchybar.png)

## Highlights

- Solid black bar with white foreground (icons/labels); no per-widget
  backgrounds or borders
- Layout mirrors the [Noctalia](../../linux/noctalia-hypr/noctalia) bar: items
  grouped into `left` (start), `center`, and `right` (end) sections
- Left: app launcher, plus the center group below when `NOTCH_SPACING=true`
- Center: Spotify now-playing widget (popup for play/next/back/shuffle/repeat), CPU
  and memory usage (stand-ins for Noctalia's `sysmon` widgets)
- Right: wifi (click to open Wi-Fi settings), bluetooth (click to open
  Bluetooth settings), volume, clock, power/session menu (lock/sleep/logout/
  reboot/shutdown popup, mirroring Noctalia's `shell.session.actions`), battery
- Each module is backed by a plugin script in `plugins/`
- Colors, fonts and spacing live in `themes/` (`mono.sh` is the default);
  swap the theme by setting `THEME=<name>` before sketchybar loads, or add a
  new `themes/<name>.sh` file with the same variables to create a new look
- Set `NOTCH_SPACING=true` in the theme (default `false`) to move the
  center group (Spotify/CPU/memory) into the left section instead, so it
  doesn't get hidden behind a MacBook's notch

## Setup

`setup.sh` backs up any existing config and symlinks this whole directory to `~/.config/sketchybar`.
