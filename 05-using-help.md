# Help

Vim ships with VERY extensive documentation. The main help file is accessible
like so:
```
:help
```

We can also access help for a specific command. Let's look at the documentation
for `w`, which is the command for moving the cursor forward by one word.

```
:he w
```

We can also get a list of all available commands that include the current
string, by pressing `<CTRL-D>`:

```
:he w<CTRL-D>
```

That's quite the list. Note that there are separate help articles for `w` and
`:w` - `w` is the motion command, whereas `:w` is the save command.

----
Let's go back to the main help page.
```
:help
```

There are helpful tips, such as the keys used for basic navigation.

There is also "Jump to a subject". Tags are hot-links to another section in the
help manual. They are highlighted in a particular color. When the cursor is
positioned over the tag, pressing `<CTRL-]>` will jump to that section.

Pressing `<CTRL-T>` will go back one tag.

The way tags work is by using the internal "tag stack", a list of visited tags.
We can inspect the current tag stack like so:

```
:tags
```
