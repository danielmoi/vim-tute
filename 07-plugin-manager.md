# Plugin manager

Plugins are a really exciting way we can extend the base functionality of Vim.

We will use plugins to implement 2 features
- color themes
- a file explorer

We will use a plugin manager called VimPlug (`vim-plug`) to manage our plugins. There are other plugin
managers, such as Pathogen and Vundle, but VimPlug is great.

It is minimalist, with parallel downloading and dynamic plugin loading.
There is a good discussion [here](https://news.ycombinator.com/item?id=8312392).

You can access its documentation [here](https://github.com/junegunn/vim-plug).

---
## `plug.vim`

We need to copy a file called `plug.vim` from `vim-plug`, and place it into
the configuration directory for Neovim.

We can do this manually, but we will use the command line:

```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Update .vimrc
Now, we need to tell Vim that we are using vim-plug as the plug-in manager

Add this to the top of `.vimrc`
```
call plug#begin('~/.vim/plugged')

" We will list our plugins here

call plug#end()
```

![Vim Plug setup](screenshots/vim-plug-setup.png)

Now we need to save and reload vim with our new config
```
:w
:so %
```

Done!

Let's confirm that we have installed `vim-plug` properly:
```
:PlugInstall
```

We get this message:
```
No plugin to install
```

![Vim Plug Install](screenshots/vim-plug-install.png)

This is fine! We will be installing plugins in the section.

---
## Tab Completion
Tab completion works with plugins too.

```
:Plug<TAB>
```

Vim displays all the commands for `vim-plug` (which all start with `Plug`):
```
Plug PlugClean PlugDiff
```

![Tab completion for Plug](screenshots/tab-completion-plug.png)


----
## Plug Status
Let's run the `PlugStatus` command using tab-completion:

As a reminder, here is a mapping of the keystrokes and their effect:

```
:Plug<TAB>                    Shows a list of all commands starting with Plug>
          S                   Shows a list of all commands starting with PlugS
           <TAB><TAB>         Tab across to PlugStatus
                     <Enter>  Execute PlugStatus
```

![Vim Plug Status](screenshots/vim-plug-status.png)


We can close that status window by pressing `q` (abbreviation for quit).

---
## Tidy `.vimrc`
Let's add some comments and compartmentalize our `.vimrc`

![Vimrc Tidy](screenshots/vim-plug-tidy.png)


