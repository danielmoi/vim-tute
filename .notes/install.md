## Install Neovim
brew install neovim

## Open Neovim
nvim

## Quit Neovim
:q <Enter>

## Create init.vim
$ cd ~
$ mkdir nvim
$ cd nvim
$ touch init.vim

```
# ~/.config/nvim/init.vim

set number
```

## Already have a .vimrc?
```bash
# runtimepath: list of directories searched for runtime files
# packpath: list of directories searched for packages
# ^= is "augmented assignment" or "compound assignment"
# CONCAT RHS to LHS
# CONCAT ~/.vim and ~/.vim/after to the runtimepath OPTION
set runtimepath^=~/.vim runtimepath+=~/.vim/after

# ASSIGN the value of runtimepath to the packpath OPTION
let &packpath = &runtimepath

# LOAD ~/.vimrc
source ~/.vimrc


# rest of nvim below
```