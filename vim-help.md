# Vim Help Tips


-----------------------------------------------------------------------------------------
## Notation 
<Key>           This is how a key is notated
<C-j>           Control key, with the 'j' key

[]              Optional. Characters inside the square brackets are optional

{descriptor}    Required. The "{" indicates "this is what i'm describing inside"

<C-{motion}>    Control key, with a "motion" 
                ("motion" is what vim uses for "direction")

<CTRL-{char}>   CTRL with character.
                The case of {char} does not matter (CTRL-C and CTRL-c) are equivalent
                The lowercased key is to be used (don't use the SHIFT key; this will produce another code)

<CR>            Enter / Carriage-return / Return

x               Normal mode command

Context is prepended to the command
v_        Visual mode command
i_        Insert mode command
:         Command line command    :help x
c_        Command line editing (editing a command in the command line)

c_<C-r>   CTRL+C when inside command line mode


-----------------------------------------------------------------------------------------
## Navigating in :help {command}
<C-]>         Go "into" the help text (when there is a hotlink)

<C-t>         Go to previous help page (previous entry in Tag stack)
<C-o>         Go to previous help page (Older cursor position)

## Useful help commands
:help           Enter help
:help CTRL-A    This gives help on the CTRL-A command ("control character")
:only           Make the current window the only one on the screen, all other windows are closed

:help index     Show the default keybindings
  
