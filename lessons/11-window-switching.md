# Window switching
You have probably already run into the issue of being unable to "get back" to your file.

Probably when using Help (the cursor is in the Help section, how do I move it back to my file?):
![Vim windows horizontal](/screenshots/vim-windows-horizontal.png)

Or when using NERDTree (the cursor is in NERDTree, how do I move it back to my file?):
![Vim windows vertical](/screenshots/vim-windows-vertical.png)


So how do we "switch windows" in Vim?

We need to use the `window-move-cursor` commands.

---
## Solution
We need to build a key sequence:
- `<CTRL-W>` - the `window` command, followed by
- the Motion (`h`, `j`, `k`, `l`) for the direction we want to move the cursor

Let's use the first image in this lesson as an example:
- we have 2 windows
- the top window is the Help window
- the bottom window is the file we are editing
- we want to move the cursor DOWN one window

We can move the cursor DOWN one window with `<CTRL-w>` followed by `j` (the Motion for "down").


---
## Shortcut
Let's create a custom shortcut for this by creating some _mappings_ in our `.vimrc`:
```
" Better window switching
map <C-j> <C-W>j " Down
map <C-k> <C-W>k " Up
map <C-h> <C-W>h " Left
map <C-l> <C-W>l " Right
```

Save and `source` your `.vimrc` again.

Now, when we press `<CTRL-j>`, we will move the cursor DOWN one window.

Great!

It's important to understand that we have just created a shortcut for _existing_ functionality
in Vim.

There are MANY more `window` commands.

Read the documentation for the `window-move-cursor` commands:
```
:he window-move-cursor
```

