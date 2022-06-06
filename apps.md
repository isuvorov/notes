# 🎓 Apps Starter Kit
Best MacOS Apps, advanced settings. HomeBrew. Установка софта с помощью brew.

Its the part of [🎓 MacOS Starter Kit](./macos-starter-kit.md)

# Homebrew (also Brew) - best packages manages (App Store for developers)

Install:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
[More info](https://brew.sh/)


# Quickstart

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/isuvorov/notes/HEAD/apps.sh)"
```


# Console utilites

## Node
`brew install node`

## Gnupg
`brew install gnupg`

## Htop
`brew install htop`

## Ncdu
`brew install ncdu`

## Nginx
`brew install nginx`

Nginx set for local debugging: 
1. `brew install nginx`
2. `git clone https://github.com/isuvorov/nginx ~/projects/nginx`
3. `echo "include /Users/isuvorov/projects/nginx/nginx.mac.conf;" > /usr/local/etc/nginx/nginx.conf`
4. `sudo cp /usr/local/opt/nginx/*.plist /Library/LaunchDaemons`
5. `ln -s $HOME/projects/nginx /etc/nginx`
6. [How to start nginx on port 80 at Mac OSX boot up / log in](https://derickbailey.com/2014/12/27/how-to-start-nginx-on-port-80-at-mac-osx-boot-up-log-in/)

https://gist.github.com/cmbankester/a3517bd398475a9e3a48

```
sudo nginx
sudo nginx -s start
sudo nginx -s stop
```

## Wget
`brew install wget`

## Httpie
`brew install httpie`

## Ansible
`brew install ansible`

## Curl
`brew install curl`

## Certbot
`brew install certbot`

## Nginx
`brew install nginx`

## Nginx
`brew install node`
More info: [🎓 Node.js Starter Kit](./nodejs.md) – Node.js, GIT, GPG settings, best global NPM packages

## Python
`brew install python`

## Go
`brew install go`

## PHP
`brew install php`

### TODO: 
`brew install --cask ab speedtest`


# GUI Apps

## 1Password
`brew install --cask 1password`
- [https://apps.apple.com/ru/app/1password-7-password-manager/id1333542190](https://apps.apple.com/ru/app/1password-7-password-manager/id1333542190) 

## 3T MongoChef
`brew install --cask studio-3t`

## Asana
`brew install --cask asana`

## Alfred 
`brew install --cask alfred`

1. Alfred
    1. Tab: General
        1. Launch Alfred at login
    2. Tab: Appearance
        1. Alfred Dark
        2. Options
            1. Hide Alfred hat > enable
            2. Hide menu bar icon > enable
            3. Show Alfred on: active screen
            4. Use native macOS Dark Mode window rendering > enable
        3. /Users/isuvorov/Documents/itheme.alfredappearance


## Bear
- [‎Bear on the Mac App Store](https://apps.apple.com/ru/app/bear/id1091189122?l=en&mt=12)
увы Brew нету

## DataGrip
`brew install --cask datagrip`

## DaisyDisk
`brew install --cask daisydisk`

## Discord
`brew install --cask discord`

## Docker
`brew install --cask docker`

## Electrum
`brew install --cask electrum`

## Google Chrome
`brew install --cask google-chrome`

## Maccy
`brew install --cask maccy`

*  [https://apps.apple.com/us/app/maccy/id1527619437](https://apps.apple.com/us/app/maccy/id1527619437) 
Clipy analogue

cmd+shift+v

## Mate Translate
`brew install --cask mate-translate`

## Miro
`brew install --cask miro`

## Mongo Compass
`brew install --cask mongodb-compass`

## Notion
`brew install --cask notion`

## Postman
`brew install --cask postman`

## PuntoSwitcher
`brew install --cask punto-switcher`
ищу аналоги

## Rectangle
`brew install --cask rectangle`
Spectacle.app analogue
изучаю

## Slack
`brew install --cask slack`

## Spectacle
`brew install --cask spectacle`

1. [Settings > Privacy > Accessibility > Enable]
2. Launch at login
3. Run as a background application
4. Read and remember shortcuts:
    1. Center
    2. Fullscreen
    3. Half
    4. Next display

## Spotify
`brew install --cask spotify`

## Sourcetree
`brew install --cask sourcetree`

## iTerm
`brew install --cask iterm2`

More info: [🎓 Terminal Starter Kit](https://github.com/isuvorov/bash) – iTerm2, oh-my-zsh, BASH & ZSH Aliases

inspirated by:
[How to Configure your macOs Terminal with Zsh like a Pro](https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/)

## Sublime Text
`brew install --cask sublime-text`
- Install package control
- install Oceanic Next Color Scheme
	- [GitHub - voronianski/oceanic-next-color-scheme: Sublime Text color scheme ready for next generation JavaScript syntax](https://github.com/voronianski/oceanic-next-color-scheme)
	- Sublime Text -> Preferences -> Color Scheme

## Things 3
*  [https://apps.apple.com/ru/app/things-3/id904280696](https://apps.apple.com/ru/app/things-3/id904280696?l=en&mt=12) 
увы brew нету

## Telegram
`brew install --cask telegram`

## Telegram Desktop
`brew install --cask telegram-desktop`

## Tunnelblick
`brew install --cask tunnelblick`

## Visual Studio Code
`brew install --cask visual-studio-code`

## WebStorm
`brew install --cask webstorm`

## Zeplin
`brew install --cask zeplin`

## Zoom
`brew install --cask zoom`

-----------------------------

### Draft in progress: 


## Gitlab runner
 `brew install gitlab-runner` https://docs.gitlab.com/runner/install/osx.html
### git-flow
git
2. `brew install mongo` 
5. `brew install watchman` https://github.com/facebook/create-react-app/issues/4540


