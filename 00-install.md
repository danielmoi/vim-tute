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

# Configuration file {#dotfiles}

The configuration file for Vim is `.vimrc` [dotfiles][dotfiles] [1][1]

Neovim supports something called XDG configuration, which means that the configuration directory
lives inside of the `.config` directory in your home directory. is Setup .vimrc to be config file


- Default user config directory is now `~/.config/nvim/`
- and the default "vimrc" location is now `~/.config/nvim/init.vim`


The default config file location is

```
~/.config/nvim/init.vim
```

Add this to `init.vim`
```
source ~/.vimrc
```


Create `.vimrc` to hold configuration
This needs to be in your root directory

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

And inside of `init.vim`, we have told Vim to go and find `.vimrc` in our root directory!

----
We can use _tab completion_

This means that if we type
```
:echo $
```
And then `<TAB>` Vim will show us all the variables that it has access to.
We can see `MYVIMRC` in that list.

----
# Vim vs Neovim



----
## Tags
tab-completion
variables
installation

[dotfiles]: A common [convention](https://en.wikipedia.org/wiki/Configuration_file) for configuration files is to have "rc" in their names.

[1]: HELLA What's going on here

There is also a convention for these files to be prefixed with a period ".", which hides these files (or directories) from being listed, hence their name: "dotfiles".
