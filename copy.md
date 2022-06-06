export OLDHOME=/Volumes/perfect/Users/isuvorov

## Google Chrome
rsync -avz $OLDHOME/Library/Application\ Support/Google/Chrome/ ~/Library/Application\ Support/Google/Chrome

P.S. уже бессмысленно

## Bash & ZSH

rsync -avz $OLDHOME/.bash ~/.bash
rsync -avz $OLDHOME/.zsh_history ~/.zsh_history
<!-- chown -R isuvorov:staff ~/.zsh_history -->

## zsh directory history

rsync -avz $OLDHOME/.directory_history ~/.directory_history
<!-- chown -R isuvorov:staff ~/.directory_history -->

## SSH
rsync -avz $OLDHOME/.ssh ~/.shh

## GPG

rsync -avz $OLDHOME/.gnupg ~/.gnupg
chown -R $(whoami):staff ~/.gnupg/
chmod 600 ~/.gnupg/* 
chmod 700 ~/.gnupg


## VSCODE

https://code.visualstudio.com/docs/setup/uninstall

Windows - Delete %APPDATA%\Code and %USERPROFILE%\.vscode
macOS - Delete $HOME/Library/Application Support/Code and ~/.vscode
Linux - Delete $HOME/.config/Code and ~/.vscode


rsync -avz $OLDHOME/Library/Application\ Support/Code/ ~/Library/Application\ Support/Code
rsync -avz $OLDHOME/.vscode/ ~/.vscode

## Mongo Compass

rsync -avz $OLDHOME/Library/Application\ Support/MongoDB\ Compass/ ~/Library/Application\ Support/MongoDB\ Compass


## Postman

rsync -avz $OLDHOME/Library/Application\ Support/Postman/ ~/Library/Application\ Support/Postman





## JetBrains

rsync -avz $OLDHOME/Library/Application\ Support/JetBrains/ ~/Library/Application\ Support/JetBrains

(more info)[https://intellij-support.jetbrains.com/hc/en-us/articles/206544519-Directories-used-by-the-IDE-to-store-settings-caches-plugins-and-logs]