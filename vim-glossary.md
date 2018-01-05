# Glossary

## Buffers, Windows, Tabs
```
Buffer    An in-memory representation of a document
          May not correspond to that file "on disk"
          A buffer is a file loaded into memory for editing
          The original file remains unchanged until you write the buffer to the file

Window    A viewport on a buffer
          One buffer can have many many windows
          When we do :q, we are actually quitting the current WINDOW


Tab Page  A collection of windows

Tab       Another tab in the terminal.

Buffer States
1. Active     :buffers shows 'a'
2. Hidden     :buffers shows 'h'
3. Inactive   :buffers shows ' '
```


---
## Modes
```
Normal Mode         the characters you type are commands
Insert Mode         the characters you type are inserted as text
Visual Mode         motion commands extend the highlighted selection
Command Mode        enter characters into the command line at the bottom of the window
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
Options are special internal variables and switches in Vim
They can be set to achieve special effects.

We change options with the keyword SET.
We inspect options by appending "?"

```
:set              Show all options that differ from their default value
:set showcmd?     show current value of option
:set showcmd      Toggle option: set, switch it on; Number/String option: show value
:set showcmd!     set current value to toggled value (invert)
:set no{option}   set option to off
:set {option}&    Set option to default value

:set pokemon?     E518: Unknown option: pokemon
                  "pokemon" is not a vim option

:set number=30    E474: Invalid argument: number=yes
                  "30" is not a valid value for the option "number"
```

---
## Vim Variables
These "regular" variables are also scoped with the Vim environment [170910]
They are only accessible within Vim.

Variables hold values for various settings / options. They are used by the user and plugins.

We change variables with the keyword LET.
We inspect variables with :echo

```
:let {var}={value}    Create internal variable
:unlet {var}          Remove internal variable

Prefixes
g: global-variable    global
b: buffer-variable    local to the current buffer
w: window-variable    local to the current window
t: tabpage-variable   local to the current tab page
l: local-variable     local to a function
s: script-variable    local to a |:source|'ed Vim script
a: function-argument  function argument (only inside a function)
v: vim-variable       global, pre-defined by Vim
```

Note:
If the namespace is not specified, then the global namespace is used
Inspect variables with :echo (not :e, which is edit)

Examples:
```
:let pokemon=1000     Create global variable pokemon, and assign it the value 1000
:echo pokemon         1000
:echo g:pokemon       1000
:echo w:pokemon       E121: Undefined variable: w:pokemon
                      E15: Invalid expression: w:pokemon

:let w:lemmings=2      Create a variable "lemmings", local to the current window
:echo lemmings         1000 (the global variable)
:echo w:lemmings       2 (the window variable)

:echo syntastic_check_on_open       #1 will print out (it is on)
:echo g:delimitMate_expand_cr       same as :ec delimitMate_expand_cr
:echo g:de <Tab>                    can also do tab completion with this
```
