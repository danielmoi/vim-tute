# Configure Vim

Let's set up Vim to load with a custom configuration. We will be able to setup
options (and a slew of other things) to be loaded each time Vim opens.

--------------------------------------------------------------------------------
## Set configuration file
Let's ask Vim where the configuration file is stored.

```
:echo $MYVIMRC
```
We will see something like this:
```
/<PATH>/.config/nvim/init.vim
```

`<PATH>` is the absolute path to your HOME directory, which is
stored as `$HOME`.

> Let's open that our configuration file:
```
:edit $MYVIMRC
```

Let's add this line:
```
source ~/.vimrc
```

(enter Insert Mode with `i`, type that line, and then `<ESC>` to return to
Normal Mode, then save with `:w`)

What this means is that when Vim starts, it will load
1. `/$HOME/.config/nvim/init.vim`, which will tell it to also load
2. `/$HOME/.vimrc`


--------------------------------------------------------------------------------
## Edit .vimrc
Now, let's edit our `.vimrc`:
```
:edit ~/.vimrc
```

This should be a blank file.

Let's add our first customizations!
```
set number
set background=dark
```

After saving the file, nothing has changed. This is because these changes
haven't been loaded into Vim.

We need to `source` these changes.

```
:so ~/.vimrc
```

Alternatively,
```
:so $MYVIMRC
```

We could also do this:
```
:so %
```
Where `%` refers to the current file (Vim will then load the configuration from
the current file)

---
Voila!

Quit Vim and start Vim again to confirm that our first customizations have
persisted.




--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
## Extras

--------------------------------------------------------------------------------
### `$HOME`

`$HOME` is a environment variable - a variable that is accessible anywhere on
your machine.

We can inspect the value of it inside Vim:

```
:echo $HOME
```
We can check it from the terminal:
```
$ echo $HOME
```

For my machine (a Mac), it shows:
```
/Users/danielmoi
```

If you are using the `alpine-neovim` image, we will see
```
/root
```


--------------------------------------------------------------------------------
### Abbreviations
Instead of this:
```
:edit $MYVIMRC
```

We can do:
```
:e $MYVIMRC
```

Because `:e` is shorthand for `:edit`


--------------------------------------------------------------------------------
### Tab completion
We can do this:
```
:e<TAB>
```

Vim will autofill `e` with the first command that starts with an `e`. Each
subsequent `<TAB>` will show the next command starting with `e`.

We can cycle backwards with `<SHIFT-TAB>`.

Once the desired command is filled, we can progress forward with `<SPACE>`, or we
can execute immediately with `<CR>`.

--------------------------------------------------------------------------------
### No beeps

If Vim has been making beeps (eg. when the cursor reaches the end of the line),
we can turn that off.

Just like with line numbers, we need to make changes to certain OPTIONS.

Add this to `/.vimrc`:


```
" turn off all beeping and window flashing
set noeb vb t_vb=
```
Note: it can be helpful to annotate your `.vimrc` with comments (`"` that is NOT
    closed with a matching `"`)

`eb` is the option for error bells, we turn this off.

`vb` is the option for visual bells, we turn this on.

`t_vb` is the option for visual bells for the terminal, we set this to empty
(which may be the reason why we have to turn visual bells on to achieve all
bells off...)



