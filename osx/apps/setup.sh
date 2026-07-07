installApp() {
  APP=$1
  if ! [ -x "$(command -v $APP)" ]; then
    echo "$APP not found. Start install..."
    brew install $APP
  fi
}

echo "####################"
echo "  INSTALLING APPS "
echo "####################"

installApp fzf
installApp lsd
installApp zsh-autosuggestions
installApp zsh-syntax-highlighting
