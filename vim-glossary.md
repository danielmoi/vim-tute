# Glossary

```
-------------------------------------------------
Buffers, Windows, Tabs
-------------------------------------------------
Buffer    An in-memory representation of a document
          May not correspond to that file "on disk"
          A buffer is a file loaded into memory for editing
          The original file remains unchanged until you write the buffer to the file

Window    A viewport on a buffer
          One buffer can have many many windows
          When we do :q, we are actually quitting the current WINDOW


Tab Page  A collection of windows

Tab       Another tab in the terminal.

Buffer States
1. Active     :buffers shows 'a'
2. Hidden     :buffers shows 'h'
3. Inactive   :buffers shows ' '


-------------------------------------------------
Modes
-------------------------------------------------
Normal Mode         the characters you type are commands
Insert Mode         the characters you type are inserted as text
Visual Mode         motion commands extend the highlighted selection
Command Mode        enter characters into the command line at the bottom of the window

