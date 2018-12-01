# Vim Terminal Options

We can open Vim using different options:


## Use a specific vimrc:

```
$ vim -u <vimrc>
```

## Don't use a vimrc:
```
$ vim -u NONE
```

## Display verbose log messages
```
$ vim -V
```

----
## Send Vim to background
```
CTRL+z
```

This will suspend the process and return to the shell.

```
[1]  + 68941 continued  nvim

[1]  + 68941 suspended  nvim
```

## Send Vim to the foreground
```
# in the command line
$ fg
```

This will resume (bring to foreground) your suspended vim
