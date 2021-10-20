# 🎓 VSCode Starter Kit
Settings, Extentions & Lifehacks. Настройки VSCode, подборка плагинов и лайфхаки.

Its the part of [🎓 MacOS Starter Kit](https://github.com/isuvorov/notes)

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
https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils
https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker
https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components
```

```bash
extensions=(
  "formulahendry.terminal"
)

echo "Установка расширений и тем..."

for ext in "${extensions[@]}"
do
  code --install-extension $ext
done
```

### User Settings

#### settings.json
```js
// Place your settings in this file to overwrite the default settings
{
  "workbench.activityBar.visible": true,
  "workbench.statusBar.visible": true,
  "theme.statusbar.background.color": "#16232a",
  "theme.statusbar.backgroundRaw.color": "#16232a",
  "theme.statusbar.backgroundDebug.color": "#16232a",
  "theme.statusbar.smiley.enabled": false,
  "theme.dark.activitybar.background.color": "#16232a",
  "window.zoomLevel": 0,
  "workbench.statusBar.feedback.visible": false,
  "atomKeymap.promptV3Features": true,
  "editor.multiCursorModifier": "ctrlCmd",
  "editor.formatOnPaste": false,
  "editor.quickSuggestionsDelay": 0,
  "editor.fontSize": 14,
  "typescript.validate.enable": false,
  "git.autofetch": true,
  "workbench.colorCustomizations": {
    // "editorLineNumber.foreground": "#999",
    // "editorLineNumber.activeForeground": "#ff0000",
    // "gitlens.gutterBackgroundColor": "#ff0000",
    "editorIndentGuide.activeBackground": "#506069",
    "editorIndentGuide.background": "#3D4C55",
    "statusBar.background": "#162730"
  },
  "gitlens.advanced.messages": {
    "suppressShowKeyBindingsNotice": true
  },
  "files.autoSave": "onFocusChange",
  "workbench.iconTheme": "vscode-icons",
  "workbench.startupEditor": "newUntitledFile",
  "projects.statusbarCommand": "projects.openNewWindow",
  "projectManager.projectsLocation": "/Users/isuvorov/projects",
  "projectManager.removeCurrentProjectFromList": false,
  "editor.tabSize": 2,
  "telemetry.enableCrashReporter": false,
  "telemetry.enableTelemetry": false,
  "editor.snippetSuggestions": "top",
  "vsicons.dontShowNewVersionMessage": true,
  "explorer.confirmDragAndDrop": false,
  "explorer.confirmDelete": false,
  "typescript.format.enable": false,
  "javascript.validate.enable": false,
  "workbench.colorTheme": "Oceanic Plus",
  "terminal.integrated.fontFamily": "Monoid Regular, Monoid, Roboto Mono for Powerline",
  // "editor.fontFamily": " Monoid Regular, Menlo, Monaco, 'Courier New', monospace"
}
```

#### keybindings.json
```js
// Place your key bindings in this file to overwrite the defaults
[
  {
    "key": "cmd+`",
    "command": "eslint.applyAllFixes",
    "when": "editorTextFocus"
  },
  {
    "key": "cmd+g",
    "command": "workbench.action.gotoLine"
  },
  {
    "key": "ctrl+g",
    "command": "-workbench.action.gotoLine"
  },
  {
    "key": "cmd+[IntlBackslash]",
    "command": "eslint.executeAutofix"
  },
  {
    "key": "ctrl+cmd+p",
    "command": "projectManager.listProjectsNewWindow",
  },
  {
    "key": "cmd+shift+d",
    "command": "editor.action.copyLinesDownAction"
  },
  {
    "key": "cmd+ъ",
    "command": "editor.action.insertSnippet",
    "args": {
      "name": "eslint-disable-line"
    }
  },
  {
    "key": "cmd+]",
    "command": "editor.action.insertSnippet",
    "args": {
      "name": "eslint-disable-line"
    }
  },

  // https://marketplace.visualstudio.com/items?itemName=geddski.macros
  
  // {
  //   "key": "cmd+]",
  //   "command": [
  //     "cursorEnd",
  //     ";",
  //     "tab"
  //   ],
  //   // "command": "tab"  
  //   // "when": "editorTextFocus",
  //   // "command": "editor.action.insertSnippet",
  //   // "args": {
  //   //   "name": "eslint-disable-line"
  //   // }
  // },  

  // {
  //   "key": "cmd+]",
  //   "command": "tab"
  // },      
]
```


#### eslint.code-snippets
```js
// {
	// Place your global snippets here. Each snippet is defined under a snippet name and has a scope, prefix, body and 
	// description. Add comma separated ids of the languages where the snippet is applicable in the scope field. If scope 
	// is left empty or omitted, the snippet gets applied to all languages. The prefix is what is 
	// used to trigger the snippet and the body will be expanded and inserted. Possible variables are: 
	// $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. 
	// Placeholders with the same ids are connected.
	// Example:
	// "Print to console": {
	// 	"scope": "javascript,typescript",
	// 	"prefix": "log",
	// 	"body": [
	// 		"console.log('$1');",
	// 		"$2"
	// 	],
	// 	"description": "Log output to console"
	// }
// }
{
	"eslint-disable-line": {
		"prefix": "eslignore",
		"body": [
			"$0 //eslint-disable-line"
		],
		"description": "Disable ESLint for the given line"
	}
}
```


##   Использую плагины

```bash
#!/bin/sh

# download vscode, move in applications
# cmd + shift + p > shell install
```



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