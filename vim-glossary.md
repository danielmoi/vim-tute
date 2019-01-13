# Glossary

## Buffers, Windows, Tabs
```
Buffer    An in-memory representation of a document
          May not correspond to that file "on disk"
          A buffer is a file loaded into memory for editing
          The original file remains unchanged until you write the buffer to the file

Window    A viewport on a buffer
          One buffer can have many windows (many viewports)
          When we do :q, we are actually quitting the current WINDOW


Tab Page  A collection of windows

Tab       Another tab in the terminal
          Not a Vim feature, strictly speaking
```
---
Example: Terminal Tabs vs Vim Tab Page
- there are 2 terminal tabs open
- the focused tab is split into a Vim Tab Page (described below), and another command prompt

![Tabs](/screenshots/buffers-tab-page.png)

---
Example: a Tab Page
- there are 3 windows open
- "Window 1" and "Window 2" are windows (viewports) on the same BUFFER (for `file-1.md`)
- "Window 3" is a window (viewport) on another BUFFER (for `file-2.md`)

![Tab Page](/screenshots/buffers-windows-labelled.png)




## Buffer States

```
1. Active     :buffers shows 'a'
2. Hidden     :buffers shows 'h'
3. Inactive   :buffers shows ' '
```


---
## Modes
```
Normal Mode         the characters typed are executed as commands
Insert Mode    i    the characters typed are inserted as text
Replace Mode   r    the characters typed are inserted as text, replacing existing text
Visual Mode    v    the motion commands typed create a highlighted selection
Command Mode   :    the characters typed appear in the Command Line at the bottom of the window
```


---
## Variables
Variables hold values for various settings in a system.

---
## System Environment Variables
These variables are global to a computer system [170926]

```
$HOME         Full path to home directory

$TERM         Type of terminal
              xterm-256color
              xterm (probably limited to 8 colors)
```

We `echo` these in Vim Command Mode by referencing them with `&`:

Example: echo the current working directory
```
:ec &pwd
```

---
## Vim Environment Variables
These variables are scoped with the Vim environment [170926]
They are only accessible within Vim.

```
$VIM          Full path to where Vim is installed

$MYVIMRC      Full path to .vimrc file (if .vimrc exists)
              Empty is no .vimrc
```

---
## Vim Options
Options are special internal variables and switches in Vim.

They can be set to achieve special effects.

We change options with the keyword `set`.

We inspect options by appending "?"

```
:set              Show all options that differ from their default value
:set number?      Show current value of option
:set number       Toggle option: set, switch it on; Number/String option: show value
:set number!      Set current value to toggled value (invert)
:set no{number}   Set option to off
:set {number}&    Set option to default value

:set pokemon?     E518: Unknown option: pokemon
                  "pokemon" is not a Vim option

:set number=30    E474: Invalid argument: number=yes
                  "30" is not a valid value for the option "number"
```

---
## Vim Variables
These "regular" variables are also scoped with the Vim environment [170910]

They are only accessible within Vim.

Variables hold values for various settings / options. They are used by the user and plugins.

We change variables with the keyword `let`.

We inspect variables with `:echo`

```
:let {var}={value}    Create variable
:unlet {var}          Remove variable

Prefixes (and their SCOPE)
g: global-variable    Global scope
b: buffer-variable    Local scope - to the current buffer
w: window-variable    Local scope - to the current window
t: tabpage-variable   Local scope - to the current tab page
l: local-variable     Local scope - to a function
s: script-variable    Local scope - to a |:source|'ed Vim script
a: function-argument  Function scope - only accessible inside a function
v: vim-variable       Global scope, pre-defined by Vim
```

Note:
If the namespace is not specified, then the global namespace is used

---
Examples:
```
:let pokemon=1000     Create global variable "pokemon", and assign it the value 1000
:echo pokemon         1000
:echo g:pokemon       1000
:echo w:pokemon       E121: Undefined variable: w:pokemon
                      E15: Invalid expression: w:pokemon

:let w:pokemon=2      Create a local variable "pokemon", scoped to the current window
:echo pokemon         1000 (the global variable)
:echo w:pokemon       2 (the window variable)

:echo syntastic_check_on_open       "1" will print out in the Command Line (it is "ON")
:echo g:syntastic_check_on_open     same as :echo syntastic_check_on_open
:echo g:syn<Tab>                    Remember that we can always perform Tab Completion
```
