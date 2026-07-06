removeIfAvailable() {
  APP=$1
  if [ -x "$(command -v $APP)" ]; then
    echo "remove $APP"
    sudo dnf remove -y $APP
  fi
}

sudo dnf update

echo "####################"
echo "  REMOVE UNWANTED"
echo "####################"

removeIfAvailable akregator
removeIfAvailable dragon
removeIfAvailable elisa
removeIfAvailable kamoso
removeIfAvailable kitty
removeIfAvailable kmines
removeIfAvailable kontact
removeIfAvailable korganizer
removeIfAvailable kpat
removeIfAvailable libreoffice
removeIfAvailable mpv
