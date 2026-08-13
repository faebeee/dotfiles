if [ ! -d ~/.tmux ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  git clone git@github.com:2KAbhishek/tmux2k.git ~/.tmux/plugins/tmux2k
fi

rm -rf "$HOME/.tmux.conf"
ln -sf "$(pwd -P)/.tmux.conf" "$HOME/.tmux.conf"

#rm -rf "$HOME/.tmux.conf"
#ln -sf "$(pwd -P)/.tmux.conf" $HOME/.tmux.conf
