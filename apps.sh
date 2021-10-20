items=(
  "gnupg"
  "htop"
  "ncdu"
  "nginx"
  "wget"
  "httpie"
  "ansible"
  "curl"
  "certbot"
  "nginx"
  "node"
  "python"
  "go"
  "php"
)

echo "Installing Brew utils..."

for item in "${items[@]}"
do
  brew install $item
done

echo "Installing Brew utils – done"

items=(
  "1password"
  "studio-3t"
  "asana"
  "alfred"
  "datagrip"
  "daisydisk"
  "discord"
  "docker"
  "electrum"
  "google-chrome"
  "maccy"
  "mate-translate"
  "miro"
  "mongodb-compass"
  "notion"
  "postman"
  "punto-switcher"
  "rectangle"
  "slack"
  "spectacle"
  "spotify"
  "sourcetree"
  "iterm"
  "sublime-text"
  "telegram"
  "telegram-desktop"
  "tunnelblick"
  "visual-studio-code"
  "webstorm"
  "zeplin"
  "zoom"
)

echo "Installing Brew cask apps..."

for item in "${items[@]}"
do
  brew install --cask $item
done

echo "Installing Brew cask apps – done"