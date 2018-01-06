# Vim Motion

Motion commands are how we navigate the cursor in Vim.

## Motion - by character
```
h         left
j         down
k         up
l         right
```

## Motion - by word
```
w         Forward, start of next
b         Back, start of previous word

e         End of current word
```

## Motion - by page
```
CTRL-F    Forward 1 page
CTRL-B    Back 1 page
```


## Motion - by file position
```
gg        Go to top of page
G         Go to bottom of page
7G        Go to line 7
```

## Motion - by scroll
```
zz        Scroll the current cursor position to the middle of the page
z<CR>     Scroll the current cursor to the top
zt
zb        Scroll cursor to the bottom of screen

CTRL+E    Scroll down 1 line [171108]
CTRL+Y    Scroll up 1 line [171108]
```



## Motion - by line position
```
0         First character of line
^         First non-blank character of line

$         End of line
```

## Motion - by search
```
*         Search forward to next occurrence of word under cursor
SHIFT+8
n         next

#         Search backward
SHIFT+3
N         Next (backward)
```
