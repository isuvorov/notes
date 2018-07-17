# VSCODE 

### `ctrl+shift+p` - поиск по командам

### Работа с деревом
* `ctrl+\`, `cmd-\` - показать скрыть дерево
* `alt+\`, `ctrl-0` - переместиться в дерево, но не обратно

##   Использую плагины

```
#!/bin/sh

# download vscode, move in applications
# cmd + shift + p > shell install


extensions=(
  "eamodio.gitlens"
  "dbaeumer.vscode-eslint"
  "robertohuertasm.vscode-icons"
  "jpoissonnier.vscode-styled-components"
  "christian-kohler.npm-intellisense"
  "christian-kohler.path-intellisense"
  "marcoms.oceanic-plus"
  "alefragnani.project-manager"
  "ryu1kn.partial-diff"
  "sleistner.vscode-fileutils"
  "formulahendry.terminal"
)

echo "Установка расширений и тем..."

for ext in "${extensions[@]}"
do
  code --install-extension $ext
done
```
