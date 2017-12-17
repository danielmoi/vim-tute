# Vim Tutorial

Welcome to Vim Tute!

Learning to use Vim can be difficult, but this tutorial will take you through the first steps.

## Pros
- An editor available on any machine
- Shortcuts to vastly increase your productivity


[Let's get started!](00-install.md)
## Outline
- Install Vim
- Navigation
- Show line Numbers
- File Manager (NERDTree)
- Color Scheme
- Mode-aware Cursor


## Run Vim inside of Docker
```
docker run -it -v "$(pwd)":/root -w /root danielmoi/alpine-neovim:0.1 bash

vim
```

## Vimrc files
TODO: Make separate ~/.vimrc symlinks
```
# Lesson 0
ln -sf vimrc-00-blank .vimrc

# Lesson 1
ln -sf vimrc-00-line-numbers .vimrc

# Lesson 2






# Reset back to blank .vimrc
unlink .vimrc; touch .vimrc
```
