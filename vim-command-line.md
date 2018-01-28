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
We are able to execute shell commands from inside of Vim, using the `:!` command.

This is the equivalent of having access to the command line inside of Vim:
```
$
```

Syntax:
```
:!    <Shell Command>
```

Example (create a directory called hello):
```
:! mkdir hello
```

Equivalent to:
```
$ mkdir hello
```

