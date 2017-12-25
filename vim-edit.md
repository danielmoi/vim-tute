# Editing

## Nav + Edit
A     end of line, and add cursor after
a     enter insert mode, AFTER current cursor position

o     add new line, and enter insert mode
O     add new line BEFORE, and enter insert mode

ea    End of word, insert cursor after


## Moving around whilst in Insert mode
<C-o>     gives you one Normal command, before returning to Insert mode [170927]

<C-o>A    will put cursor at the end of the line (staying in edit mode)
          this is <C-e> in MacOS
          can also just type over the closing ) though...

<C-o>j    will move the cursor down to next line (staying in edit mode)
          this is <C-n> in MacOS

we can also map <C-hjkl> to allow us to use these keys to navigate inside insert mode


## Visual Mode & Selecting text
Enter visual mode
Use direction keys to modify selection

V       select whole line (then motion keys)
v       select character (and then motion keys)


-------------------------------------------------------------------------
## Yank (Copy)
y           yank 1 character
y3l         yank 3 characters to the right
[x]y        yank n characters
["x]y       into

y$          yank from here, to end of line, but not newline character at the end
go to start of line, copy to end, exclude newline

yy or Y     yank current line, including the newline character at the end of the line [170828]



"*
- this is clipboard access, where we are using the "* register (there is also a "+ register)
"*Y = yank whole line to clipboard
<S-V>, visual select, then "*y to copy selection to clipboard

yiw = yank word, inside (no surrounding whitespace) [170828]
yiw = yank word, around (no surrounding whitespace) [170828]


We can also do visual select
<S-v>, and then navigate using keys to select text, and then YANK


## Delete (Cut)
D = cut current line, from this character, to the end
dd = cut current line, including the newline character at the end of the line [170828]

x = Delete, a throwback to typewriters and having to over-write an 'x' to "delete"
r           Replace single character (returns back to Normal mode)

dt(   delete to (but not including) the first "(" character [171103]
df(   delete to (and including) the first "(" character

# Paste
p     paste below (the "default" behaviour is next line / below)
P     paste above
"*p   paste from the "*" register

(cf. o for insert on new line below, and O for insert new line above)

## Example: Select 2 lines
Shift + V   Enter visual mode
j   Increase selection down
"*Y   Copy to clipboad

## Example: Select all
ggVG  Go to top > Visual mode > Go to bottom

-------------------------------------------------------------------------
## Insert line
`o` = "open" up a new line, below



-------------------------------------------------------------------------
# Move line
:m +1 (or :m+1, space not needed) = move line down 1 line
:m -2 (or :m-1, space not needed) = move line up 1 line

:m 0 = move current line to BEFORE first line
:m $ = move current line to AFTER last line

:m 12 = move to exactly line 12 (if line 12 is below current line)
:m 12 = move to line after line 12 (ie. line 13, if line 12 is above current line)
(this explains why :m -2 works; the line is above, so we need to move one line extra)

Can also do this with blocks of text (select > :m +10)

[170909A] Implmented <A-j> and <A-k> as mappings for these

-------------------

## Search and Replace
[170915]
There is the :s substitute command

:%s/one/two/g         Find "one" in ALL lines, and replace with "two"
:%s/one/two/gc        Same, but ask for confirmation
:%s/\<one>\>/two/gc   Same, but for EXACT match

:s/one/two/g          Find "one" in THIS line, and replace with "two"

/-----------------------------------------------------------------------

% operator

It can be a "range operator"
:%s/hi/bye/g    % is a shortcut for 1,$ (line 1 to line end) (find and replace hi with bye in whole file)

we can get help for it at :help :%

It can also be a "file operator"
Here, it represents "the current file name"

:%s/\<<C-r><C-w>\>
/         Search forward for the [count]'th occurrence of the {pattern} exclusive
\<  \>    Ensures that the whole word is matched
<C-r>     Insert content of any register at the cursor (whilst staying in Insert mode)
          The next character is the name of the register (will be prompted with a "=")
<C-w>     Following <C-r> will insert the word under the cursor


:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap  Non-recursive mapping in Normal mode
<Leader>s   The key combination <Leader> and "s"

\-----------------------------------------------------------------------

## Replace (Change inner word)
[170915]
ciw     change inner word = removes current word, and enters Insert mode
ct,     change inner word to the first instance of "," [171108]


## Change case
[171022]
~   Toggle case
U   Uppercase
u   Lowercase

Visual select, then ~/U/u
viw~  Toggle case of current word

gUU   Change current line to uppercase
guu   Change current line to lowercase

Toggle case of...
~     character under cursor
3~    next three characters
g~3w  next three words
g~iw  current word (cursor can be anywhere in word)
g~$   all characters, from cursor, to end to line


# Shell out
:!    The next commands will be executed in the shell (terminal)
      :! mkdir hello
      # creates a directory called hello
