# Personal dotfiles and environment setup

1. Install [nvm](https://github.com/nvm-sh/nvm) for node.js
2. Install [homebrew](https://brew.sh)
3. Clone dotfiles and init all dependencies `git submodule update --init`
4. Link the `.vimrc` and `.vim` from dotfiles to home directory
5. Open vim and run `VundleInstall`
6. Link `.tmux.conf` to home directory

## Configure git

```
git config --global user.name "Maythee Anegboonlap"
git config --global user.email contact@llun.dev
git config --global core.editor vim
git config --global init.defaultBranch main
```
