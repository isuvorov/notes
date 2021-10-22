OLDHOME=/Volumes/bootmac\ -\ Data/Users/isuvorov

## Google Chrome
rsync -avz $OLDHOME/Library/Application\ Support/Google/Chrome/ ~/Library/Application\ Support/Google/Chrome

P.S. уже бессмысленно

## Bash & ZSH

rsync -avz $OLDHOME/.zsh_history ~/.zsh_history
<!-- chown -R isuvorov:staff ~/.zsh_history -->


## zsh directory history

rsync -avz $OLDHOME/.directory_history ~/.directory_history
<!-- chown -R isuvorov:staff ~/.directory_history -->

## GPG

rsync -avz $OLDHOME/.gnupg ~/.gnupg
chown -R $(whoami):staff ~/.gnupg/
chmod 600 ~/.gnupg/* 
chmod 700 ~/.gnupg


## JetBrains

rsync -avz $OLDHOME/Library/Application\ Support/JetBrains/ ~/Library/Application\ Support/JetBrains

(more info)[https://intellij-support.jetbrains.com/hc/en-us/articles/206544519-Directories-used-by-the-IDE-to-store-settings-caches-plugins-and-logs]