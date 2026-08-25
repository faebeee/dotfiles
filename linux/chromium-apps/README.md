# Chromium Apps

Linux `.desktop` launcher files for Chrome/Chromium web apps (PWA shortcuts).

## Highlights

- `apps/` contains `chrome-<id>-Default.desktop` files for installed web apps, plus `mimeapps.list` and `mimeinfo.cache`
- `setup.sh` copies `apps/` contents to `~/.local/share/applications`
- `sync.sh` does the reverse: pulls currently installed desktop files back into the repo

Files are stored on `/home/fabs/.local/share/applications`
