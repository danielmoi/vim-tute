# Setup

## Neovim
Vim comes pre-installed in most distributions of Linux and on MacOS. However, I would recommend using Neovim instead.


Neovim is a refactor of Vim. It offers significant improvements with regards to the plugin API,
 codebase, and developer community. There is a good discussion [here](https://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/).


For me, I found out about Neovim after running into a lot of problems getting Copy and Paste to
work properly on MacOS (some issues with my version of Vim not using the global clipboard).



## Install Neovim

On MacOS, simply use Homebrew:
```
$ brew install neovim
```

There are more installation instructions here:

https://github.com/neovim/neovim/wiki/Installing-Neovim

## Alias vim to nvim
This is also optional, but I found it really useful. This allows us to type `vim` (instead of `nvim`) to open Neovim.
```
$ alias "vim=nvim"
```

Note: the rest of this tutorial, in general, will use "Vim" even though we will be using Neovim.
However, the procedures covered in this tutorial will work interchangeably between Vim and Neovim.


----
## Map Caps Lock to Escape
I recommend mapping the `<CAPSLOCK>` key to `<ESC>` for 2 reasons.
- the `<ESC>` key is how we return to Normal Mode in Vim. As such it's like a reset / "stop" key in Vim - you'll use it a lot
- the `<CAPSLOCK>` key is not really used for any thing useful


On MacOS, open System Preferences > Keyboard > Modifier Keys...

Then, change the mapping for Caps Lock key to Escape.

