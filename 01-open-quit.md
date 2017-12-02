# Open and Quit


### Open Vim
From the command line,
```
$ vim
```

---
### Editor features
The solid white rectangle at the top left is your cursor.

The lines beginning with a `~` are tilde lines. These indicate lines that are
NOT in the file.

The file name is displayed in the message line. We haven't named this file we've
just opened, so `[No Name]` is displayed.


---
### Close Vim
Let's quit Vim.

We need to use 3 keystrokes to exit.

First, type `:` to enter command mode.
You will notice that the cursor at the top left has moved to the bottom left,
preceded by the `:` that we typed. This indicates that we are in command
mode.

Then, type `q`, which is shorthand for `quit`.

Then, press the `Enter` key to execute our command.


And that's it!

We're back to the command line!


----
## Notes

### Check version of Vim
We can check the version of Vim from the command line.
```
$ vim --version
```

If you are using the `alpine-neovim` docker image referenced in the `README`, you will see (among other details):
```
NVIM 0.1.7
```

## Notation

We will follow a notation for command line instructions.

Pressing
1. `:`, to access the Command Line, followed by
2. `q`, the command (`quit` in this case), followed by
3. `<Enter>` key (to execute our command),

is notated like so:
```
:q
```
