rm $HOME/.config/hypr
ln -sf "$(pwd -P)/hypr" $HOME/.config/hypr

rm $HOME/.config/noctalia/config.toml
ln -sf "$(pwd -P)/noctalia/config.toml" $HOME/.config/noctalia/config.toml

rm -rf $HOME/.config/noctalia/palettes/
ln -sf "$(pwd -P)/noctalia/palettes" $HOME/.config/noctalia/palettes

rm $HOME/.local/state/noctalia/settings.toml
cp "$(pwd -P)/noctalia/settings.toml" $HOME/.local/state/noctalia/settings.toml

hyprctl reload
