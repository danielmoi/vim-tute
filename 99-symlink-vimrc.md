## Vimrc files
TODO: Make separate ~/.vimrc symlinks
---
## Overwrite ~/.vimrc with TARGET
```
ln -si ./vimrc-00-blank ~/.vimrc
```

have to do `-sf` on Alpine, because there is `i` option







---
## Reset back to blank .vimrc
```
unlink .vimrc; touch .vimrc
```

---
## Restore ~/.vimrc with vimrc in dotfiles
```
ln -si ~/.dotfiles/vimrc ~/.vimrc
```
