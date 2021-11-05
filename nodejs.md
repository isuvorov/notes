# 🎓 Node.js Starter Kit
Node.js, GIT, GPG settings, best global NPM packages

Its the part of 🎓 [MacOS Starter Kit](https://github.com/isuvorov/notes)

		1. nodemon


# TODO: Node.js


# NPM


## Legacy Peer Deps problem
- https://github.com/npm/rfcs/discussions/283
# TODO: NPM global libs

# GPG

Installing 
```bash
brew install gnupg2 pinentry-mac
ln -s /usr/local/bin/gpg /usr/local/bin/gpg2
```

(Generate your key)[https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key]

List of all GPG keys in your db and copy <YOUR_SIGNING_KEY>, like `B97E9964ACAD1907970D37CC8A9E3745558E41AF`
```bash
gpg --list-keys
```

Setup GPG config
```bash
git config --global user.signingkey <YOUR_SIGNING_KEY>
git config --global commit.gpgsign true
git config --global gpg.program gpg
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
```

Test GPG working correct
```bash
echo "test" | gpg --clearsign  
```

Try to commit something and save your passphrase in keychain.
```bash
export GPG_TTY=$(tty) 
git commit -S -m "message"
```

Check that all correct
```bash
git log --show-signature -1
```


## Source Tree

Если происходит ошибка
> error: gpg failed to sign the data
Напишите мне – разберемся

Source Tree использует другой gpg, нужно как-то подменить


Возможные решения:

```bash
killall gpg-agent && gpg-agent --daemon --use-standard-socket --pinentry-program /usr/local/bin/pinentry
```

- [gnupg - Git error - gpg failed to sign data - Stack Overflow](https://stackoverflow.com/questions/41052538/git-error-gpg-failed-to-sign-data)
- [github - gpg failed to sign the data fatal: failed to write commit object Git 2.10.0 - Stack Overflow](https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0)
- [GnuPG - Download](https://gnupg.org/download/index.html)


> cannot run gpg: No such file or directory


git config --global gpg.program "$(which gpg)"
https://stackoverflow.com/questions/36941533/git-hub-desktop-on-mac-error-cannot-run-gpg-no-such-file-or-directory


# TODO: Git flow

