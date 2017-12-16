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
