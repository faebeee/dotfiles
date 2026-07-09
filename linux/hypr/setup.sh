if [ -d $HOME/.config/hypr ]; then
  echo "REMOVE OLD HYPERLAND CONFIG"
  cp -r $HOME/.config/hypr $HOME/.config/hypr.bkp
  rm -rf $HOME/.config/hypr
fi

mkdir $HOME/.config/hypr
mkdir $HOME/.config/hypr/dms

cp "$(pwd -P)/dms/binds.conf" $HOME/.config/hypr/dms/binds.conf
cp "$(pwd -P)/dms/cursor.conf" $HOME/.config/hypr/dms/cursor.conf
cp "$(pwd -P)/dms/layout.conf" $HOME/.config/hypr/dms/layout.conf
cp "$(pwd -P)/hyprland.conf" $HOME/.config/hypr/hyprland.conf
