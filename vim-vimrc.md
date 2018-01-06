# Vim configuration tips
Tips for use in .vimrc

See also Vim options and variables in the [Glossary](/vim-glossary.md)

---
## Key mapping
Basic syntax:
```
:map {lhs} {rhs}
```

This will map the key combination inside the left braces to the key combination
inside the right braces.

Note: the `:` indicates that we are entering Command Line Mode, where we will enter
Executable commands

In this case, `map` is the executable command.

---
Example: Let's map a Window Command (covered in [Window Switching](/lessons/11-window-switching.md):
The window command "Move cursor down one window" is executed by this key sequence: `<CTRL-w>j`

We want to, instead, simply use `<CTRL-j>`.

If we want to map that key sequence for just the CURRENT Vim session, we can use
Command Line Mode:

Remember that `:` enters Command Line Mode, where we can enter Executable commands:
```
map <C-j> <C-w>j
```

If we want to map a key sequence for ALL SUBSEQUENT Vim sessions, we will use
the `.vimrc` and OMIT the `:` (there is no concept of "entering Command Line Mode in
a `.vimrc` file)
```
" in our .vimrc file
:map <C-j> <C-w>j
```

To recap, this means that
1. When  `<CTRL-j>` key combination ("Control" key + "j" key) is pressed,
2. Vim will perform the `<CTRL-W>j` key combination instead ("Control key + "w" key + "j" key)

---
```

map           The "root" of all recursive mapping commands.
              Used like this, will apply the key mapping to these modes:
              map is recursive
              1. Normal Mode
              2. Visual Mode
              3. Select Mode
              4. Operator-pending Mode

"nore"        "NOt REcursive"
"noremap"     "map, but not recursively"

imap          map, but only in Insert Mode

:map          Show all user-defined key mappings (user / plugins)
:nmap         show visual mode mappings
:vmap         show visual mode mappings
:imap         show insert mode mappings

```



---
## Comments
Commented lines start with a `"`

Note: there is no closing `"`

Example:
```
" This is a comment in a .vimrc file
```

Example heading #1:
```
" === SETTINGS =====================
set number
```


Example heading #2:
```
" ------------------------------
" HEADING
" ------------------------------
set number
```

Example block #1:
```
"/=== BLOCK HEADING =======
"
" Another way to use comments
"
"\===================
```

