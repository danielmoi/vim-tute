# Navigation

Welcome to navigation!

Let's learn how to move around in Vim using only keystrokes!

NB. these commands are called Motion commands, and are for use in Normal Mode.

Remember, pressing `<Esc>` will always switch the current mode to Normal Mode.

---
## By character
Instead of using the arrow keys, Vim uses the `h`, `j`, `k`, and `l` keys to move the cursor by
one character. These are "character" Motion commands.

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
Instead of pressing and holding down `l` to move right a bunch of characters, there are "word"
Motion commands.

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
Instead of using the scroll wheel on the mouse, or a trackpad, there are "page" Motion commands.
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


----
## Exercise
Open up `exercises/02-navigation.md` and navigate around the maze, using only keystrokes!



