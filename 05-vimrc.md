# Configure Vim

Let's set up Vim to load with a custom configuration. We will be able to setup
options (and a slew of other things) to be loaded each time Vim opens.

--------------------------------------------------------------------------------
## Configuration file Part 1
Whilst the configuration file for Vim lives at `~/.vimrc`, Neovim uses `~/.config/nvim/init.vim`.

This is because Neovim supports something called XDG configuration - it uses the configuration
directory `~/.config`.

That is,
- default user config directory is now `~/.config/nvim/`
- and the default "vimrc" location is now `~/.config/nvim/init.vim`


## Configuration file Part 2
We can also ask Vim where its configuration file is stored.

```
:echo $MYVIMRC
```
We will see something like this:
```
/<PATH>/.config/nvim/init.vim
```

`<PATH>` is the absolute path to your HOME directory (which is stored as `$HOME`).

## Edit `init.vim`
Let's open that our configuration file:
```
:edit $MYVIMRC
```

That was equivalent to doing this from the command line:
```
vim ~/.config/nvim/init.vim
```

Let's add this line inside `init.vim`:
```
source ~/.vimrc
```

As a reminder, these are the steps needed:
1. enter Insert Mode, with `i`,
2. type those characters: `source ~/.vimrc`
3. return to Normal Mode, with `<ESC>`
4. save file, with `:w`

What this means is that when Vim starts, it will load
1. `/$HOME/.config/nvim/init.vim`, which will tell it to also load
2. `/$HOME/.vimrc`


--------------------------------------------------------------------------------
## Edit `.vimrc`
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

## Load configuration
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

We should now see line numbers and a different editor background color.

Quit Vim and start Vim again to confirm that our first customizations have
persisted.




--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
## Environment Variables
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
A lot of commands in Vim can be abbreviated. For example, instead of `echo`, we can do `ec`, (`e` is for `edit`).

So, instead of:
```
:echo $MYVIMRC
```

We can do:
```
:ec $MYVIMRC
```

Similarly, instead of:
```
:edit $MYVIMRC
```

We can do:
```
:e $MYVIMRC
```

--------------------------------------------------------------------------------
### Tab completion
Vim offers tab auto-completion. By pressing `<TAB>`, Vim will show us all commands/files/variables
starting with that initial string of characters.

If we do
```
:e<TAB>
```

Vim will provide a list of COMMANDS that begin with `e`.

We can cycle forwards with `<TAB>`, and backwards with `<SHIFT-TAB>`.

Once the desired command is selected, we can:
1. extend the command (add additional characters) with `<SPACE>`, or
2. execute immediately with `<CR>`.

Similarly, if we do
```
:edit <TAB>
```

(noting the space after `edit`), Vim will provide us a list of FILES that can be edited.


Similarly, if we do
```
:echo $<TAB>
```

Vim will provide a list of VARIABLES that begin with `$` (ie. all of them).

--------------------------------------------------------------------------------
### Comments
As with code, it can be helpful to annotate your `.vimrc` with comments. You may forget what
certain lines are doing, and others reading the file might be interested too!

Comments in `.vimrc` begin with a `"`, and there is NO matching `"` at the end of the line:
```
" my comment
```

--------------------------------------------------------------------------------
### No terminal beeps

If Vim has been making beeps (eg. when the cursor reaches the end of the line),
we can turn that off.

Just like with line numbers, we need to make changes to certain OPTIONS.

Add this to `/.vimrc`:
```
" turn off all beeping and window flashing
set noeb vb t_vb=
```

`eb` is the option for error bells, we turn this off.

`vb` is the option for visual bells, we turn this on.

`t_vb` is the option for visual bells for the terminal, we set this to empty
(which may be the reason why we have to turn visual bells on to achieve all
bells off...)



### Dotfiles
A common [convention](https://en.wikipedia.org/wiki/Configuration_file) for configuration files
is to have "rc" in their names.

There is also a convention for these files to be prefixed with a period ".", which hides these files (or directories) from being listed, hence their name: "dotfiles".

So now you know why the configuration file for Vim is named `.vimrc`!

