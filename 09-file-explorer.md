# File Explorer

We can browse our directory inside of Vim.

Let's do that.

## 1.1 Open Vim
```
$ vim
```

## 1.2 Explore
Type ":Explore"

```
:Explore
```

This opens up the Netrw directory explorer

Use the up and down keys to navigate.
Press Enter to open a file.

We have access to the built-in `:Explore` file explorer from Vim
This is important to remember if using Vim as-is

We can also install a plugin, called NERDTree, which is very good

Put this in `.vimrc`
```
Plug 'scrooloose/nerdtree'
```

Save, reload, run :PlugInstall




