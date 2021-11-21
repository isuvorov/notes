# 🎓 VSCode Starter Kit
Settings, Extentions & Lifehacks. Настройки VSCode, подборка плагинов и лайфхаки.

Its the part of [🎓 MacOS Starter Kit](https://github.com/isuvorov/notes)

# Quickstart

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/isuvorov/notes/HEAD/vscode.sh)"
```

## First launch 
1. Trust ~/projects
2. `ctrl+shift+p` > install code command in PATH
3. Relaunch Terminal App

## Использую тему

### Set theme

https://marketplace.visualstudio.com/items?itemName=marcoms.oceanic-plus

```bash
code --install-extension marcoms.oceanic-plus
```

### Set more file icons

https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons


```bash
code --install-extension vscode-icons-team.vscode-icons
```

### fluent-icons

https://marketplace.visualstudio.com/items?itemName=miguelsolorio.fluent-icons

```bash
code --install-extension miguelsolorio.fluent-icons
```

### Add terminal icon in status bar

https://marketplace.visualstudio.com/items?itemName=formulahendry.terminal

```bash
code --install-extension formulahendry.terminal
```

### Project Manager

https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager

```bash
code --install-extension alefragnani.project-manager
```

### Highlight TODO, FIXME etc

https://marketplace.visualstudio.com/items?itemName=jgclark.vscode-todo-highlight

```bash
code --install-extension jgclark.vscode-todo-highlight
```


### Eslint

https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint

```bash
code --install-extension dbaeumer.vscode-eslint
```


### gitlens

https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens

```bash
code --install-extension eamodio.gitlens
```

### git-graph

https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph

```bash
code --install-extension mhutchie.git-graph
```

### dotenv

https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv

```bash
code --install-extension mikestead.dotenv
```

### vsliveshare

https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare

```bash
code --install-extension ms-vsliveshare.vsliveshare
```

### sync-rsync

https://marketplace.visualstudio.com/items?itemName=vscode-ext.sync-rsync

```bash
code --install-extension vscode-ext.sync-rsync
```

### wmaurer.change-case

https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case

```bash
code --install-extension wmaurer.change-case
```

### christian-kohler.path-intellisense

https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense

```bash
code --install-extension christian-kohler.path-intellisense
```

### christian-kohler.path-intellisense

https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost

```bash
code --install-extension wix.vscode-import-cost
```

### sleistner.vscode-fileutils

https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils

```bash
code --install-extension sleistner.vscode-fileutils
```

#### TODO: in progress

```bash
https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense
https://marketplace.visualstudio.com/items?itemName=adpyke.codesnap
https://marketplace.visualstudio.com/items?itemName=adpyke.vscode-sql-formatter
https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode
https://marketplace.visualstudio.com/items?itemName=ftonato.password-generator
https://marketplace.visualstudio.com/items?itemName=gruntfuggly.activitusbar
https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components
https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome
https://marketplace.visualstudio.com/items?itemName=ryu1kn.partial-diff
https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced
https://marketplace.visualstudio.com/items?itemName=silvenon.mdx
https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker
https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components
```


### User Settings

- [settings.json](./vscode/settings.json)
- [keybindings.json](./vscode/keybindings.json)
- [eslint.code-snippets](./vscode/eslint.code-snippets)

## Hot-keys
* `ctrl+shift+p` - поиск по командам
* `ctrl+\`, `cmd-\` - показать скрыть дерево
* `alt+\`, `ctrl-0` - переместиться в дерево, но не обратно

## VSCode directories

### Settings file locations

- Windows `%APPDATA%\Code\User\settings.json`
- macOS `$HOME/Library/Application Support/Code/User/settings.json`
- Linux `$HOME/.config/Code/User/settings.json`

[More info](https://code.visualstudio.com/docs/getstarted/settings)

### Extensions locations

- Windows `%USERPROFILE%\.vscode\extensions`
- macOS `~/.vscode/extensions`
- Linux `~/.vscode/extensions`

[More info](https://code.visualstudio.com/docs/editor/extension-marketplace)