# dotfiles

## Setting up a new device

First, clone this as bare git repo

```shell
git clone --bare https://github.com/robin-thoene/dotfiles.git $HOME/dev/robin-thoene/dotfiles
```

Setup the alias manually once to checkout the dotfiles for the first time

```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/dev/robin-thoene/dotfiles --work-tree=$HOME'
```

Ensure that untracked files ignored

```shell
dotfiles config --local status.showUntrackedFiles no
```

Checkout the main branch

```shell
dotfiles checkout
```
