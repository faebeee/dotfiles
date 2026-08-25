#!/bin/sh
# Session / power menu, mirrors noctalia's [shell.session.actions]:
# lock, logout, lock_and_suspend, reboot, shutdown

lock() {
  /System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend
}

logout() {
  osascript -e 'tell application "System Events" to log out'
}

sleep_mac() {
  lock
  sleep 1
  pmset sleepnow
}

reboot() {
  osascript -e 'tell application "System Events" to restart'
}

shutdown() {
  osascript -e 'tell application "System Events" to shut down'
}

mouse_clicked() {
  case "$NAME" in
    "power.lock") lock ;;
    "power.logout") logout ;;
    "power.sleep") sleep_mac ;;
    "power.reboot") reboot ;;
    "power.shutdown") shutdown ;;
    *) exit ;;
  esac

  sketchybar --set power popup.drawing=off
}

case "$SENDER" in
  "mouse.clicked") mouse_clicked ;;
  *) exit ;;
esac
