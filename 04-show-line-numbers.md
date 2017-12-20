# Customization with options

Let's configure Vim to display some line numbers. This, like a lot of features,
comes for free with Vim, but requires the user to opt-in.


Let's turn line numbers on!

```
:set number
```

Hello line numbers!

What we just did was change an OPTION.

Options are internal variables in Vim.

There are 3 forms of options:
1. boolean (toggle option),
2. number (numeric value)
3. string (string value)

Displaying line numbers is stored in the option `number`, a boolean option.

----
----
## Extra notes

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

----
## Option - Set value (number or string option)
Let's modify the `background` option, an example of a string option.

This option tells Vim the background color of our terminal. Vim will adjust its default color
groups to match that background color.

There are 2 valid values: `dark` / `light`.

```
:set background=dark
```

```
:set background=light
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

Let's PERSIST our settings by setting up our [configuration file]().

