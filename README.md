# Vim Tutorial

## Outline
- Install Vim
- Navigation
- Show line Numbers
- File Manager (NERDTree)
- Color Scheme
- Mode-aware Cursor


## Run Vim inside of Docker
```
docker run -it -v "$(pwd)":/root -w /root danielmoi/alpine-neovim bash

vim
```

## Vimrc files
```
# Lesson 0
ln -si .vimrc-00-blank .vimrc

# Lesson 1
ln -si .vimrc-01-line-numbers .vimrc





# Reset back to blank .vimrc
unlink .vimrc; touch .vimrc
```
