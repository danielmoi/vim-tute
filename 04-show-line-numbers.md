# Show line numbers (using options)

Let's configure Vim to display some line numbers. This, like a lot of features,
comes for free with Vim, but requires an opt-in - via configuration.

We can do this temporarily by changing an OPTION.

Options are internal variables in Vim. They are used for specific features in
Vim. There are 3 forms of options:
1. boolean (toggle option),
2. number (numeric value)
3. string (string value)

We do this inside COMMAND-LINE MODE.

Displaying line numbers is stored in the option `number`.

Let's turn line numbers on!

```
:set number
```

Hello line numbers!


----
## Extra notes

### Option - Inspect value
Let's INSPECT what value this option has at present.
We have to use the `?` modifier.

```
:set number?
```

We will see
```
nonumber
```

This makes sense. There are no line numbers being displayed!

### Option - Set value (boolean option)
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

### Option - Set value (number or string option)
This requires us to use a different option, as the `number` option is a
boolean option. Let's modify the `background` option. This adjusts the colors to
suit either a `dark`/`light` background (the 2 values for this option).

We provide the value for the option like so:

```
:set background=dark
```

```
:set background=light
```

### Option - Reset value
```
:set number&
:set background&
```

----
This is excellent!

However, one problem is that if we exit Vim, and start Vim again, our line
numbers and background colors have reset back to their default values.

The way we fix this is by personalising Vim using a configuration file.

