# Vim macros

qx      Start recording to register "x"
q       Stop recording

@x      Playback
100@x   Playback 100 times


## Problem
How to convert this:
032949cf-26b7-4da4-bace-7e9be326bfa7
032949cf-26b7-4da4-bace-7e9be326bfa7
032949cf-26b7-4da4-bace-7e9be326bfa7
032949cf-26b7-4da4-bace-7e9be326bfa7
032949cf-26b7-4da4-bace-7e9be326bfa7

To this?
'032949cf-26b7-4da4-bace-7e9be326bfa7',
'032949cf-26b7-4da4-bace-7e9be326bfa7',
'032949cf-26b7-4da4-bace-7e9be326bfa7',
'032949cf-26b7-4da4-bace-7e9be326bfa7',
'032949cf-26b7-4da4-bace-7e9be326bfa7',


### 1. Set up
0         Move cursor to first character in line

### 2. Record macro
qq        Start recording to register "q"
i         Enter insert mode
'         Insert an opening quote
ESC       Exit insert mode
SHIFT+A   Enter insert mode after the last character in line
',        Insert a closing quote and a comma
ESC       Exit insert mode
j         Move cursor down 1 line
0         Move cursor to first character in line
q         Stop recording

### 3. Playback macro
5@q       Playback macro "q" 5 times

Done!
