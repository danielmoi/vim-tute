# Color Theme

Ok! This is an exciting section - we're going to spruce up Vim with a color theme!


## Configure
We will use `vim-colors-solarized` as a starting point.

We need to tell VimPlug to install this plugin, by adding it to our `.vimrc`,
inside the 2 `call` statements:
```
Plug 'altercation/vim-colors-solarized'
```

We also need to tell Vim to use this plugin:
```
" Use Solarized color scheme
colorscheme solarized
```


![Vimrc Color Theme](/screenshots/vimrc-color-theme.png)

## Reload
Now we need to save, reload, and run PlugInstall

First, let's save:
```
:w
```

Then, we need to reload Vim using our updated `.vimrc`
```
:so %
```

We will get this error, but that's okay - we know that we haven't installed that plugin yet.

![Missing color scheme](/screenshots/vimrc-color-scheme-error.png)

We can dismiss that with `<Enter>`.

Now, let's get VimPlug to install our color theme plugin!
```
:PlugInstall
```

We should see this success window:

![Vim PlugInstall success](/screenshots/vim-plug-install-finished.png)

Finally, we need to reload `.vimrc` again:
```
:so %
```

Voila!

![Vim Solarized Color Scheme](/screenshots/vim-solarized.png)
