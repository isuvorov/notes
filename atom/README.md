# Atom starter kit
Темы, плагины, настройки, советы

## Темы
UI Theme: One dark
Syntax Theme: Oceanic Next `oceanic-next`

##  Плагины

Чтобы установить плагины через терминал воспользуйтесь: `apm install ...`

* `advanced-open-file`
* `language-babel`
* `language-postcss`
* `linter`
* `linter-eslint`
* `merge-conflicts`
* `pigments`
* `minimap, minimap-cursorline, minimap-find-and-replace, minimap-pigments`
* `project-manager`
* `autocomplete-modules`
* `color-picker`
* `platform-ide-terminal`
* `docblockr`

Установить все эти плагины:

`apm install advanced-open-file, language-babel, language-postcss, linter, linter-eslint, merge-conflicts, pigments, minimap, minimap-cursorline, minimap-find-and-replace, minimap-pigments, project-manager, autocomplete-modules, color-picker, platform-ide-terminal, docblockr`

## Hotkeys - Горяцие клавиши

### Основные

* `ctrl+shift+p` - поиск по командам
* `cmd+ctrl+p`, `alt+shift+p` - выбрать проект

### Работа с деревом
* `ctrl+\`, `cmd-\` - показать скрыть дерево
* `alt+\`, `ctrl-0` - переместиться в дерево и обратно
* `ctrl+shift+c` - скопировать полный путь к файлу
* `f2` - переименовать / переместить
* `d` - dublicate

### Multiple Selections
* `cmd+d` - Выделить похожий паттерн
* `cmd+u` - Отменить выделение
* `ctrl+cmd+g` - Выделить все

### Поиски

* `cmd+shift+f` - искать текст по проекту
* `cmd+r` - поиск по методам
* `cmd+t`, `ctrl+p` - искать файл в проекте
* `cmd+b` - искать файл из открытых вкладок
* `cmd-shift-b` - искать все измененные файлы (которые изменены в GIT)

### Скобки
* `ctrl+m` - найти конечную скобку
* `ctrl+alt+m` `cmd-ctrl-m` - выделить все в скобках


### А также

* `ctrl+shift+m` - markdown preview
* `ctrl+shift+l` - выбрать грамматику подсветки

## Советы

autosave> включить
tabs>color = true
tabs>show icons = off
tabs>use preview tabs = on


## Eslint
Настройка ES-Lint и reformat (beautify)

`cmd+shift+p` > `keymap` 

```
'atom-text-editor':
  'cmd-§': 'linter-eslint:fix-file'
```


### Дополнительные планины

#### tidy-tabs
ctrl+alt+shift+w

#### gist-it
ctrl+alt+g  - Gist Current File
ctrl+alt+shift+g  -  Gists the contents of the current selection


### terminal-plus
ctrl+entr -  скопировать , вставить в терминал, запустить





