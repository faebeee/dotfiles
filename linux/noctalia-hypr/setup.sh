rm $HOME/.config/hypr
ln -sf "$(pwd -P)/hypr" $HOME/.config/hypr

rm $HOME/.config/noctalia
ln -sf "$(pwd -P)/noctalia" $HOME/.config/noctalia

hyprctl reload
