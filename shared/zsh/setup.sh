mv "$HOME/.zshrc" "$HOME/.zshrc.bkp"
cp "$(pwd -P)/.zshrc" "$HOME/.zshrc"

if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
  echo "################"
  echo "Installing zsh-autosuggestions"
  echo "################"
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
  echo "################"
  echo "Installing zsh-syntax-highlighting"
  echo "################"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi
