# 🎓 Node.js Starter Kit
Node.js, GIT, GPG settings, best global NPM packages

Its the part of [🎓 MacOS Starter Kit](https://github.com/isuvorov/notes/macos-starter-kit.md)

		1. nodemon




# GPG - Truth
```
brew install gnupg gnupg2 pinentry-mac diff-so-fancy
gpg --list-keys
git config --global user.signingkey <YOUR_SIGNING_KEY>
git config --global commit.gpgsign true
git config --global gpg.program gpg
-------------------
echo "test" | gpg --clearsign  
------------------
export GPG_TTY=$(tty)
git commit -S -m "message"
------------------
git log --show-signature -1
------------------
Source Tree

> error: gpg failed to sign the data

> или не вставился пасскод
> или в настройках не правильный путь

/usr/local/Cellar/gnupg@1.4/1.4.23_1/bin/gpg



echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf

killall gpg-agent && gpg-agent --daemon --use-standard-socket --pinentry-program /usr/local/bin/pinentry

```
`

- [gnupg - Git error - gpg failed to sign data - Stack Overflow](https://stackoverflow.com/questions/41052538/git-error-gpg-failed-to-sign-data)
gitflow


- [GnuPG - Download](https://gnupg.org/download/index.html)


[github - gpg failed to sign the data fatal: failed to write commit object Git 2.10.0 - Stack Overflow](https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0)