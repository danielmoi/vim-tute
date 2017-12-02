# No beeps

If Vim has been making beeps (eg. when the cursor reaches the end of the line),
this lesson will show how that can be turned off.

Just like with line numbers, we need to make changes to certain OPTIONS.


" turn off all beeping and window flashing
" eb = option for error bells
" vb = option for visual bells
" t_vb = option for terminal visual bell
```
set noeb vb t_vb=
```


