# btop

Config for [btop](https://github.com/aristocratos/btop), a terminal system monitor.

![btop](./btop.png)

## Highlights

- `muted-grey` theme based on the repo's existing muted grey palette
- Pastel accents are reused for graphs and process highlights
- Theme files are installed into `~/.config/btop/themes`
- Add more themes by dropping additional `*.theme` files into `themes/`

## Setup

`setup.sh` symlinks `themes` to `~/.config/btop/themes`.

## Usage

- Run `shared/btop/setup.sh` from this repository to install the theme link
- Start `btop` and select `muted-grey` from the theme menu
- `muted-grey.theme` is the current theme file shipped here
