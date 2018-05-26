# Navigation

Welcome to navigation!

Let's learn how to move around in Vim using only keystrokes!

NB. these commands are called Motion commands, and are for use in Normal Mode.

Remember, pressing `<Esc>` will always switch the current mode to Normal Mode.

---
## Practice Folder
First, we need to create an empty folder for our Vim practice.

Do that wherever you want, and `cd` into it.

```
$ mkdir hello-vim
$ cd hello-vim
```

---
## By character
To move the cursor over by _1 character_, instead of using the arrow keys,
Vim uses the `h`, `j`, `k`, and `l` keys.

These are "character" Motion commands.

Here's a visualization of these key mappings:
```
Down  j
Up    k
Left  h
Right l
```


Another visualization:

```
             UP

             k
LEFT     h       l   RIGHT
             j

            DOWN
```


Yet another visualization:
```
                      UP
                      |
    LEFT --   h   j   k   l  -- RIGHT
                  |
                DOWN
```



----
## By word
To move the cursor over by _1 word_, there are "word" Motion commands.

This is instead of holding down the left or right "character" Motion keys (`h` or `l`).

NB. these will take us to the beginning of the word
```
w         next word
b         previous word     Back one word
```

Sometimes, you may want to move the cursor the the END of a WORD, instead of holding down `h` or `l`:
```
e         end of word
```

---
## By page
To move the cursor up or down by _1 page_, there are "page" Motion commands.

This is instead of using the scroll wheel on the mouse, or a trackpad.

```
CTRL-F    Forward one page
CTRL-B    Back one page
```

---
## File position
We can also move the cursor relative to the file:
```
gg        Top of file (press <g> twice)
G         End of file (<SHIFT-g>)
```

---
## Scroll
We can also scroll the screen, keeping the cursor on the current line.
```
zz        Scroll current line to middle of screen

zt        Scroll current line to Top of screen
zb        Scroll current line to Bottom of screen
```

--
## Search / Find
We can search for the next occurence of a word
```
/hello<Enter>    Move cursor to next occurrence of "hello"
n                Move cursor to next occurrence of (current) search
N                Move cursor to Previous occurrence of (current) search

*                Move cursor to next occurrence of word under cursor
#                Move cursor to previous occurrence of word under cursor
```

----
## Exercise
To practice our navigation commands, we need to grab the `/exercises/02-navigation.md` file
from the repository for this tutorial.

Make sure you're in the `hello-vim` directory, and let's use `curl` to fetch that file.
```
curl -LO https://raw.githubusercontent.com/danielmoi/vim-tute/master/exercises/02-navigation.md
```

Open that file and navigate the path, using only keystrokes!
```
$ vim 02-navigation.md
```



