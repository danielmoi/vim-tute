# Write and save

Let's start by creating a file, writing some text, and saving the file!


## Open file
We can open a new file with the name `hello.md`.

Note that this hasn't been written to disk yet (hello.md hasn't been saved).

```
$ vim hello.md
```

We have now opened that file inside Vim.


## Enter Insert mode
We are currently in Normal mode.
This means that we can't enter any text.

Let's enter Insert mode.
Press "i"

We should now see --INSERT-- in the bottom left.
We should also see our cursor change to a thin vertical bar.
This indicates that we are now in insert mode!


## Insert text
Type a couple of lines

```
Hello there!
Happy days.
```

## Save
Now let's save our file (write to disk).
We need to exit Insert mode, and re-enter Normal mode.

Press `<ESC>`

We should now see --NORMAL-- in the bottom left.
This indicates that we are in Normal Mode!

Now we need to access the Command Line.

Press `:`

You should now see a ":" in the bottom left, following by a block cursor.

Press `w`.

This stands for "Write" (save).
Press <CR>

We should see something like:
```
"hello.md" [New] 2L, 25C written
```

We have now saved our file!
That output tells us that
1. The file "hello.md" was saved
2. It was a new file
3. 2 lines were added
4. 25 characters were added

---
## Quit
Now that we have saved the file (written to disk), we can quit!

Type ":q"

Which is:
1. Enter command line mode
2. Quit (q is shorthand for quit; we could have typed :quit)

We should now be back in the terminal.

We can confirm that our file exists:
```
$ ls
```

We should see our `hello.md` in the directory contents!


## Save and quit
We can combine the `write` and `quit` commands to achieve this
```
:wq
```

## Force quit (without saving)
If we are completely sure we want to close a file without saving, we can do
this:
```
:q!
```



--------------------------------------------------------------------------------
## Exercise
Make another file `icecream.md`, write a flavor of icecream in it, save, and
exit.

----
## Map Caps Lock to Escape
I recommend mapping the `<CAPSLOCK>` key to `<ESC>` for 2 reasons.
- the `<ESC>` key is how we return to Normal Mode in Vim. As such it's like a reset / "stop" key in Vim - you'll use it a lot
- the `<CAPSLOCK>` key is not really used for any thing useful


On MacOS, open System Preferences > Keyboard > Modifier Keys...

Then, change the mapping for Caps Lock key to Escape.


