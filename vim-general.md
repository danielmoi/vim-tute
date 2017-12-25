# General vim tips

-----------------------------------------------------------------------------------------
## Background
Vim stands for Vi IMproved
It's written as a proper noun

-----------------------------------------------------------------------
## Quit
:q    Quit
:q!   Force quit (no saving)
:w    Write (save)
:wq   Write Quit (Save and Quit)

:lclose   Close the "location list" for the current window
          The lint errors window for Syntastic is a location list
          The location list is a window-local variant of the Quickfix List


-----------------------------------------------------------------------
## File Explorer
:Explore  This is the built-in file explorer! [171112]

We can also install a plugin, such as NERDTree

-----------------------------------------------------------------------
## Terms
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

-----------------------------------------------------------------------
## Motion
h         left
j         down
k         up
l         right

CTRL-F    Forward 1 page
CTRL-B    Back 1 page
zz        Scroll the current cursor position to the middle of the page
z<CR>     Scroll the current cursor to the top
CTRL+E    Scroll down 1 line [171108]
CTRL+Y    Scroll up 1 line [171108]

gg        Go to top of page
G         Go to bottom of page
7G        Go to line 7

w         Forward, start of next
e         Forward, End of next word
b         Back, start of previous word

0         First character of line
^         First non-blank character of line
I         First character of line, and enter insert mode

$         End of line
A         End of line, and enter insert mode (Append text at end of line)

SHIFT+8   Search forward
SHIFT+3   Search backward

n         Next, forward
N         Next, backward

-----------------------------------------------------------------------
## Modes
Normal Mode         the characters you type are commands
Insert Mode         the characters you type are inserted as text
Visual mode         motion commands extend the highlighted selection
Command line mode   enter characters into the command line at the bottom of the window

-----------------------------------------------------------------------
## Options
Options are the internal variables and switches in Vim which can be set to
achieve special effects.

We change options with the keyword SET.
We inspect options by appending "?"

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

-----------------------------------------------------------------------
## Environment Variables
[170926]

$HOME         Full path to home directory

$VIM          Full path to where Vim is installed

$MYVIMRC      Full path to .vimrc file (if .vimrc exists)
              Empty is no .vimrc

$TERM         Type of terminal
              xterm-256color
              xterm (probably limited to 8 colors)

-----------------------------------------------------------------------
## Variables
[170910]
Variables hold values for various settings / options. They are used by the user and plugins.

We change variables with the keyword LET.
We inspect variables with :echo

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

Note:
If the namespace is not specified, then the global namespace is used
Inspect variables with :echo (not :e, which is edit)

Examples:
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

-----------------------------------------------------------------------
## Key mapping
map           The "root" of all recursive mapping commands.
              As the root form, applies to "normal", "visual+select", and "operator-pending" modes.
              map is recursive

"nore"        means "not recursive"; "noremap" means "map, but not recursively"

imap          map, but only in insert node

:map          Show all user-defined key mappings (user / plugins)
:nmap         show visual mode mappings
:vmap         show visual mode mappings
:imap         show insert mode mappings

:map {lhs} {rhs}    Map the lhs key combination to the rhs key combination



-----------------------------------------------------------------------
## Comments (.vimrc)
" Comments start with " (omit the closing ")

" === SETTINGS =====================
- this is a nice way to set comments in .vimrc

"/=== A BLOCK =======
"
" Another way to use comments
"
"\===================


-----------------------------------------------------------------------
## Command line
n q:      Open command line window [170918]
          (whilst in Normal mode) Open a history of commands. Can edit these too!
          Quit :q
          Search /
