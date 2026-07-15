rm $HOME/.config/hypr/dms/binds-user.lua
ln -sf "$(pwd -P)/dms/binds-user.lua" $HOME/.config/hypr/dms/binds-user.lua

rm $HOME/.config/hypr/hyprland.lua
ln -sf "$(pwd -P)/hyprland.lua" $HOME/.config/hypr/hyprland.lua

hyprctl reload
