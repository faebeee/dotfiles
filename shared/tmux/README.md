# tmux

Config for [tmux](https://github.com/tmux/tmux), a terminal multiplexer.

![tmux](./tmux.png)

## Highlights

- Prefix key `C-b`, mouse support enabled
- Custom window bindings (`n`/`r`/`l`/`q`)
- Top status bar: session name + git branch on the left, battery/date/hostname on the right
- Plugin manager [`tpm`](https://github.com/tmux-plugins/tpm) with `tmux-sensible`, `minimal-tmux-status`, and `tmux-battery`, plus [`tmux2k`](https://github.com/2KAbhishek/tmux2k)

## Setup

`setup.sh` symlinks `.tmux.conf` to `~/.tmux.conf` and clones `tpm`/`tmux2k` into `~/.tmux/plugins` if missing.
