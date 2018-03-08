# Surround


## Surround
`ys` is the command ("you surround" or "yay, surround")

1st arg = a valid Vim motion / text object
2nd arg = what to wrap the 1st arg with
```
ysiw"     ys = the surround command
          iw = inner word, a text object
          " = surround the word with double quotes (")
```

yst,'     ys = the surround command
          t, = all the characters from current cursor the the first ","
          ' = surround that select with single quotes

## Change surroundings
`cs` is the command ("change surroundings")

1st arg = the target surroundings (existing surroudings)
2nd arg = the replacement surroundings
```
cs"'      cs = the change surroundings command
          "  = replace double quotes...
          '  = with single quotes
```

## Visual Mode
- Make visual selection
- `S` = surround
- 1st arg = the replacement surroundings

```
Vlll     Select 3 characters to the right
S(       Surround selection with parentheses
```
