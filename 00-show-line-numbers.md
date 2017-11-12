# Show line numbers

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


