# VSCODE 

### `ctrl+shift+p` - поиск по командам

### Работа с деревом
* `ctrl+\`, `cmd-\` - показать скрыть дерево
* `alt+\`, `ctrl-0` - переместиться в дерево, но не обратно

##   Использую плагины

```sh
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

User Settings
```json
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

Keybindings
```json
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