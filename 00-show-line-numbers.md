# Show line numbers

Let's ask Vim to display some line numbers.

We can do this temporarily by changing an OPTION.
Options are internal variables.

We do this inside COMMAND-LINE MODE.

Displaying line numbers is stored in the option `number`.

Let's turn line numbers on!

```
:set number
```


----
## Extra notes

### Option - Inspect
Let's INSPECT what value this option has at present.
We have to use the `?` modifier.

```
:set number?
```

We will see
```
nonumber
```

This makes sense. There are no line numbers being displayed!

### Option - Toggle
We can toggle the value of an option with the `!` modifier.

```
:set number!
```

Try that a couple of times.


### Option - Turn ON
We do this:
```
:set number
```

### Option - Turn OFF
We use the `no` modifier
```
:set nonumber
```

Most often, it's easier to use the `?` modifier.


### Set default option value
This involves modifying our `.vimrc`



Add this to your `.vimrc`
```
set number
```

## Notes

We can check that this worked.

Method 1
- quit Vim (`:wq`)
- start Vim (`Vim`)
- we should see line numbers in the left


Method 2
- reload our config file
```
:source $MYVIMRC
```

- This can also be done with a shortcut for `source`
```
:so $MYVIMRC
```

- Also, because we know we are working on our `$MYVIMRC` file, we can do this:
```
:so %
```
where `%` means the file that we are currently in.


