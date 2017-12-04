# Plugin manager

Plugins are a way to extend the base functionality of Vim.

vim-plug is a "minimalist Vim plugin manager"
https://github.com/junegunn/vim-plug

## Installation

### Add plug.vim
Download `plug.vim` and put it in the appropriate `autoload` directory

We can do this manually, or we can use the command line

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Update .vimrc
We need to tell Vim that we are using vim-plug as the plug-in manager

Add this to the top of `.vimrc`
```
call plug#begin('~/.vim/plugged')
" We will list our plugins here
call plug#end()
```

Now we need to save.
```
:w
```

And let's reload vim with our new config
```
:so %
```

Now, we have access to `vim-plug`!
```
:PlugInstall
```

We get this message:
```
No plugin to install
```

(We can all use tab-completion with `Plug<TAB>` to see the options`



### Comments
Comments start with a single " in .vimrc


### Tags
plugins plugin-manager
comments
