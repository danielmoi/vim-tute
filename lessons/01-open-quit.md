# Open and Quit


## 1. Open Vim
Okay, ready? Let's open Vim!

In your terminal, simply type `vim` :
```
$ vim
```

---
### Editor features
Vim should have loaded, looking like this:
![Vim welcome screen](/screenshots/start-screen.png)

I know... WHAT IS GOING ON??!

Let's go through some main features:
1. Cursor. This is the solid white rectangle at the top left.

1. Tilde lines. These are the lines beginning with a `~`. These indicate lines that are
NOT in the file. To use Vim-speak, tilde lines indicate that the end of the buffer has been reached.

1. Message Line. This is the white rectangle at the bottom. It displays useful information such as
the file name (We haven't named this file we've just opened, so `[No Name]` is displayed).

1. Current Mode and Command Line. This is the line below the Message Line. We are currently in
Normal Mode, and the Command Line is hidden (we will discuss Modes and the command line later).



---
## 2. Close Vim
Now, let's quit Vim.

We need to use 3 keystrokes to exit.

First, type `:` to enter Command Mode.

```
:
```
You should see something like this:
![Vim welcome screen](/screenshots/command-line.png)

You will notice that the cursor (white block) at the top left has moved to the bottom left,
preceded by the `:` that we just typed. This indicates that we are in Command Mode.

Then, type `q`, which is shorthand for `quit`.
```
:q
```
![Vim welcome screen](/screenshots/command-line-quit.png)

Then, press the `Enter` key to execute our command.



And that's it!

We have exited Vim, and we're back to the command line!

```
$
```


----
## Modes
Ok. Vim is a "modal editor" - there are different "modes" or "states" of its user interface.

What this means is that keystrokes do different things in different modes. Editors such as Visual
Code or Microsoft word are "modeless" or "unimodal" - they only have one mode.
Pressing the "i" key will always insert the `i` character.

Things are different in Vim, for example:
1. Pressing the `i` key whilst in _Normal Mode_ will switch the editor to _Insert Mode_.

2. Pressing the `i` key in _Insert Mode_ will insert the "i" character into the file.

3. Pressing the `<Esc>` key will switch the editor back to Normal Mode.

This is why when you open Vim and typing "hello" doesn't result in "hello" being displayed on
the screen!

This may seem very confusing - why would this be useful?! - but it will make sense. Modes in Vim are
about _*separation of concerns*_ - grouping "insert" commands (such as inserting text) for Insert
Mode, and keeping them separate from "normal" commands for Normal Mode (such as scrolling to
a particular line).

Here are the main modes in Vim:
1. Normal Mode
2. Insert Mode
3. Command Mode
4. Visual Mode
5. Replace Mode


----
## Check version of Vim
If you ever need to check the version of Vim, you can do this in the command line:
```
$ vim --version
```

You will probably see something like this:
```
NVIM v0.2.0
... (more information here)
```
indicating that we are using Neovim, at version 0.2.0

----
## Notation

We will follow a notation for commands to be typed into the Command Line (ie. switch to Command
Mode).

This:
```
:q
```
indicates these steps:
1. `:`, to enter Command Mode (this will place the cursor into the Command Line), followed by
2. `q`, the command (`quit` in this case), followed by
3. `<Enter>` key, to execute our command (this is not notated)

