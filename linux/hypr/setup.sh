rm -rf $HOME/.config/hypr/dms/binds.conf
ln -sf "$(pwd -P)/dms/binds.conf" $HOME/.config/hypr/dms/binds.conf

rm -rf $HOME/.config/hypr/dms/cursor.conf
ln -sf "$(pwd -P)/dms/cursor.conf" $HOME/.config/hypr/dms/cursor.conf

rm -rf $HOME/.config/hypr/dms/layout.conf
ln -sf "$(pwd -P)/dms/layout.conf" $HOME/.config/hypr/dms/layout.conf

rm -rf $HOME/.config/hypr/hyprland.conf
ln -sf "$(pwd -P)/hyprland.conf" $HOME/.config/hypr/hyprland.conf
