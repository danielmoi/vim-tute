# Vim Command Line


## Command Line Completion
In the command line, `<CTRL-D>` will list names that match the pattern in
front of the cursor.

The help tag for this is `c_CTRL-D`

For example:
```
:he list<CTRL-D>
```

This gives us a list like this:
```
list
:list
'list'
list-index
+listcmds
'listchars'
```

`:list` refers to the Command Line COMMAND `list`

`'list'` refers to the Vim OPTION 'list'


----
## Shell out
```
:!    The next commands will be executed in the shell (terminal)

      :! mkdir hello
      # creates a directory called hello
```
