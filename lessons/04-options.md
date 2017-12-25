# Options

Let's begin to customize Vim.

We will look at using Vim's OPTIONS to display line numbers in the editor window
and to change the color scheme.

---
## Line numbers
We'll start with getting Vim to display some line numbers.

This, like a lot of features, comes for free with Vim, but has to be "turned on".

Open the `hello.md` that we created before.

```
$ vim hello.md
```

Now let's turn line numbers on!


```
:set number
```

Hello line numbers!

![Line Numbers](/screenshots/line-numbers.png)

What we just did was change an OPTION.

Options are internal variables in Vim.

There are 3 forms of options:
1. boolean (toggle option)
2. number (numeric value)
3. string (string value)

Displaying line numbers is stored in the option `number`, a _boolean_ option.

----
## Background color
Now let's modify the `background` option, which is a _string_ option.

This option tells Vim the background color of our terminal. Vim will adjust its default color
groups to match that background color.

There are 2 valid values: `dark` / `light`.

Let's tell Vim that our terminal has a dark background so it can adjust its color groups accordingly.
```
:set background=dark
```

![Color groups for dark background](/screenshots/background-dark.png)

There's not much of a change with our current screen (for example, there is no code with syntax
highlighting).

However, the line numbers have changed color to a light gray. This is because, given a dark
background, light gray provides better contrast than orange.

----
## Option - Inspect value
We can INSPECT the current value of an option with the `?` modifier.

```
:set number?
```

We will see
```
number
```

This makes sense - we have just turned line numbers on!

----
## Option - Set value (boolean option)
We can toggle the value of a boolean option with the `!` modifier.

```
:set number!
```

Try that a couple of times.


We can set the option to "on":
```
:set number
```

We use set the option to "off" by using the `no` prefix:
```
:set nonumber
```

Most often, it's easier to use the `?` modifier.


---
## Options - Set value (string / number option)
We have to provide the actual value when setting string or number options:
```
set background=dark
```

Or:
```
set background=light
```


----
## Option - Reset value
We can reset the value of an option with the `&` option.
```
:set number&
:set background&
```

----
This is excellent! We are able to configure Vim with our personal configuration.

However, if we quit and restart Vim, our line numbers have disappeared and the color scheme has
been reset to default.

Let's PERSIST our settings by setting up our `vimrc`.

