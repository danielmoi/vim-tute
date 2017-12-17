# Setup

## Install Neovim
This is optional.

However, this is definitely recommended, especially if you are using a Mac.

[Here's a good discussion about the benefits of using NeoVim over Vim.](link)


Follow this guide to install Neovim:
https://github.com/neovim/neovim/wiki/Installing-Neovim

- Alias vim to nvim
```
alias "vim=nvim"
```

- Setup .vimrc to be config file

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
