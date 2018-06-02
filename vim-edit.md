# Editing

## Enter Insert Mode - by character
```
i     enter insert mode, at current cursor position

a     enter insert mode, AFTER current cursor position
```

----
## Enter Insert Mode - by line
```
A     go to end of line, then enter Insert Mode (Append text at end of line)

I     go to first character of line, then enter insert mode


o     add new line, BELOW current cursor position, then enter Insert Mode
      ("open" a new line)

O     add new line ABOVE current cursor, then enter Insert Mode

ea    go to End of word, insert cursor after
```


----
## Navigation whilst in Insert mode
```
<C-o>     gives you one Normal command, before returning to Insert mode [170927]

<C-o>A    will put cursor at the end of the line (staying in edit mode)
          this is <C-e> in MacOS
          can also just type over the closing ) though...

<C-o>j    will move the cursor down to next line (staying in edit mode)
          this is <C-n> in MacOS

we can also map <C-hjkl> to allow us to use these keys to navigate inside insert mode
```


----
## Selecting Text
1. Enter visual mode
2. Use direction keys to modify selection

```
V       select whole line (then motion keys)
v       select character (and then motion keys)

viw     select characters Inside current Word
```
## Example: Select 2 lines
```
Shift + V   Enter visual mode
j           Increase selection down (now it is 2 lines)
Y           Copy to clipboad
```

## Example: Select all
```
ggVG        Go to top > Visual mode > Go to bottom
```


----
## Yank (Copy)
```
y           Yank 1 character (the character under the current cursor position)

3y          Yank 3 characters

y3l         Yank 3 characters, to the right
["x]y       into

y$          Yank from here, to end of line
            EXCLUDES the newline character

Y or yy     Yank entire current line
            INCLUDES the newline character at the end of the line [170828]

"*Y         Yank entire current line to the * register
            "* is clipboard access, where we are using the * register
            (there are other registers, such as the + register)

yiw         Yank inner word
            inside (no surrounding whitespace) [170828]

yaw         Yank around word
            around (no surrounding whitespace) [170828]

We can also make a visual selection and then use "y" to yank
```


----
## Delete (Cut)
```
D       cut from current cursor position to the end of the line
dd      cut current line, include the newline character at the end of the line [170828]

x       cut current character
        a throwback to typewriters and having to over-write an 'x' to "delete"

r       Replace single character (returns back to Normal mode)
        rt = replace the current character with "t"

di(     Delete characters inside matching parentheses "(" and ")"

dt(     Delete characters up to (but excluding) the first "(" character [171103]

df(     Delete characters up to (and including) the first "(" character
        Delete to where we Find the first "(" character

d0      Delete backwards, from current cursor to start of line
        Excludes current cursor

dB      Delete backwards, one word.
        (B is the motion command for back one word)

dF(     Delete backwards, to the first occurrence of "(" (inclusive)
```

----
## Change (Replace)
```
ci(     Change characters inside matching parentheses "(" and ")"

ciw     Change inner word
        Remove current word, and enter Insert Mode
        [170915]

ct(     Change characters up to (but excluding) the first "("
        [171108]

cf(     Change characters up to (and excluding) the first "("
```


----
## Paste
```
p       paste below current line
        the "default" behaviour is always the next line / below
        cf. "o" for insert new line below, and "O" for insert new line above

P       paste above current line

"*p     paste from the "*" register, above the current line

```

----
# Move line
```
:m +1       Move line down 1 line
            (or :m+1, space not needed)
            Implmented <A-j> and <A-k> as mappings for these [170909A]

:m -2       Move line down 1 line
            (or :m-2, space not needed)

:m 0        Move current line to BEFORE first line
:m $        Move current line to AFTER last line

:m 12       Move to exactly line 12 (if line 12 is below current line)
:m 12       Move to line after line 12 (ie. line 13, if line 12 is above current line)
            (this explains why :m -2 works; the line is above, so we need to move one line extra)

Vjj:m +10   Visual Select 3 lines, then move down 10 lines
```

----

## Search and Replace

We can use the `:s` substitute command [170915]

```
:%s/one/two/g         Find "one" in ALL lines, and replace with "two"
:%s/one/two/gc        Same, but ask for confirmation
:%s/\<one>\>/two/gc   Same, but for EXACT match

:s/one/two/g          Find "one" in THIS line, and replace with "two"


% operator

It can be a "range operator"
:%s/hi/bye/g    (find and replace hi with bye in whole file)

%           shortcut for 1,$ (line 1 to line end)
            we can get help for it at :help :%

            It can also be a "file operator"
            Here, it represents "the current file name"

:%s/\<<C-r><C-w>\>
/           Search forward for the [count]'th occurrence of the {pattern} exclusive
\<  \>      Ensures that the whole word is matched
<C-r>       Insert content of any register at the cursor (whilst staying in Insert mode)
            The next character is the name of the register (will be prompted with a "=")
<C-w>       Following <C-r> will insert the word under the cursor


:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap    Non-recursive mapping in Normal mode
<Leader>s   The key combination <Leader> and "s"
```




----
## Change case
We can use the `~` command [171022]
```
~       Toggle case of character under cursor
U       Uppercase character under cursor
u       lowercase character under cursor

viw~    Toggle case of current word
        Visual Mode, select inner word, then ~/U/u

gUU     Change current line to uppercase
guu     Change current line to lowercase

Toggle case of...
~       character under cursor
3~      next three characters
g~3w    next three words
g~iw    current word (cursor can be anywhere in word)
g~$     all characters, from cursor, to end to line
```


