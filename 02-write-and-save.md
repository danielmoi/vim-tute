# Write and save

Let's start by creating a file, writing some text, and saving the file!

## 1.1 Create file
Let's do this in the terminal.

```
$ touch hello.md
```

## 1.2 Open file in Vim
Now let's open that file in Vim.

```
vim hello.md
```

We have now opened that file inside Vim.


## 1.3 Enter Insert mode
We are currently in Normal mode.
This means that we can't enter any text.

Let's enter Insert mode.
Press "i"

We should now see --INSERT-- in the bottom left.
This indicates that we are now in insert mode!


## 1.4 Insert text
Type a couple of lines

Hello there!
Happy days.

## 1.5 Write
Now let's write to disk (Save our file)
First we need to exit Insert mode, and re-enter Normal mode.
Press <ESC>

We should now see --NORMAL-- in the bottom left.
This indicates that we are in normal mode!

Now we need to access the Command Line.
Press ":"

You should now see a ":" in the bottom left, following by a block cursor.

Press "w"
This stands for "Write" (save).
Press <CR>

We should see something like:
```
"hello.md" [New] 2L, 25C written
```

We have now saved our file!
That output tells us that
1. The file "hello.md" was written
2. It was a new file
3. 2 lines were added
4. 25 characters were added

## 1.6 Quit
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

## 1.7 Exercise
Make another file `icecream.md`, write a flavor of icecream in it, save, and
exit.
We will use this file in a later lesson.

--------------------------------------------------------------------------------
## Notes
Note that we can also use tab completion
```
$ vim h<TAB>
$ vim hello.md
```
