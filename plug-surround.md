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

## Change surroundings
`cs` is the command ("change surroundings")

1st arg = the target surroundings (existing surroudings)
2nd arg = the replacement surroudings
```
cs"'      cs = the change surroundings command
          "  = replace double quotes...
          '  = with single quotes
```
