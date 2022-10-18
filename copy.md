# Before

```bash
export OLDHOME=/Volumes/moon/Users/isuvorov
```

## Google Chrome

```bash
rsync -avz $OLDHOME/Library/Application\ Support/Google/Chrome/ ~/Library/Application\ Support/Google/Chrome
```

P.S. уже бессмысленно

## Bash & ZSH

```bash
rsync -avz $OLDHOME/.bash ~/.bash
rsync -avz $OLDHOME/.zsh_history ~/.zsh_history
chown -R isuvorov:staff ~/.zsh_history 
```

## zsh directory history

```bash
rsync -avz $OLDHOME/.directory_history ~/.directory_history
chown -R isuvorov:staff ~/.directory_history 
```

## SSH

```bash
rsync -avz $OLDHOME/.ssh ~/.shh
```

## GPG

```bash
rsync -avz $OLDHOME/.gnupg ~/.gnupg
chown -R $(whoami):staff ~/.gnupg/
chmod 600 ~/.gnupg/* 
chmod 700 ~/.gnupg
```

## Sublime

```
Windows - `%APPDATA\Sublime Text`
MacOS - `~/Library/Application Support/Sublime Text`
Linux - `~/.config/sublime-text`
```
(more info)[https://chromium.googlesource.com/chromium/src/+/69.0.3482.1/docs/sublime_ide.md]

```bash
rsync -avz $OLDHOME/Library/Application\ Support/Sublime\ Text\/ ~/Library/Application\ Support/Sublime\ Text/
```

## VSCODE

- Windows - `%APPDATA%\Code and %USERPROFILE%\.vscode`
- MacOS - `$HOME/Library/Application Support/Code` and `~/.vscode`
- Linux - `$HOME/.config/Code` and `~/.vscode`
(more info)[https://code.visualstudio.com/docs/setup/uninstall]

```bash
rsync -avz $OLDHOME/Library/Application\ Support/Code/ ~/Library/Application\ Support/Code
rsync -avz $OLDHOME/.vscode/ ~/.vscode
```

## Mongo Compass

```bash
rsync -avz $OLDHOME/Library/Application\ Support/MongoDB\ Compass/ ~/Library/Application\ Support/MongoDB\ Compass
```


## Postman

```bash
rsync -avz $OLDHOME/Library/Application\ Support/Postman/ ~/Library/Application\ Support/Postman
```

## JetBrains

```bash
rsync -avz $OLDHOME/Library/Application\ Support/JetBrains/ ~/Library/Application\ Support/JetBrains
```

(more info)[https://intellij-support.jetbrains.com/hc/en-us/articles/206544519-Directories-used-by-the-IDE-to-store-settings-caches-plugins-and-logs]