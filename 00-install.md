# Setup

## Neovim
Vim comes pre-installed in most distributions of Linux and on MacOS. However, I would recommend using Neovim instead.


Neovim is a refactor of Vim. It offers significant improvements with regards to the plugin API, codebase, developer community. There is a good discussion [here](https://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/).


For me, I found out about Neovim after running into a lot of problems getting Copy and Paste with the global clipboard to work properly.

## Install Neovim

On MacOS, simply use Homebrew:
```
$ brew install neovim
```

There are more installation instructions here:

https://github.com/neovim/neovim/wiki/Installing-Neovim

## Alias vim to nvim
This is also optional, but I found it really useful. This allows us to type `vim` to open Neovim.
```
$ alias "vim=nvim"
```

----
## Notes

We can check that this has all worked
Open vim
```
$ vim
```

Print out (to the vim command line) the location of the vimrc configuration file
```
:echo $MYVIMRC
```

We should see this:
```
/root/.config/nvim/init.vim
```


----
We can use _tab completion_

This means that if we type
```
:echo $
```
And then `<TAB>` Vim will show us all the variables that it has access to.
We can see `MYVIMRC` in that list.

