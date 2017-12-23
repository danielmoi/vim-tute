# Vim Tute

Welcome to Vim Tute!

Learning to use Vim can be difficult, but this tutorial will take you through enough steps to be comfortable using Vim.

But why bother learning Vim?

## 1. Availability
Vim is a text editor available on most machines.

This is particularly useful when you need to edit / view files in situations where your
favourite code editor is not available.  Such as:
  - SSH into a remote server
  - working inside a Docker container (local / remote)
  - editing / saving Git commits on a machine where Git is not yet configured to use a code editor

Most of the common operations in Vim will also work in Vi, an older editor that may be the only
editor available on some servers.

## 2. Productivity
Learning to use ONLY the keyboard to write and edit code will vastly increase your productivity.

It is faster and more accurate to select, delete, and manipulate text using keystrokes - than it
is to use a mouse/keyboard combination.

Vim also offers a lot of shortcuts that will save you a lot of time. For example:
- navigate to the top or bottom of a file with one keystroke combination
- record a series of steps that you can replay to manipulate text, such as turning a list of UUIDs
    ```
    0015ff92-7f1a-4f22-b34e-3997701ecc94
    001bb00d-fcc0-4a01-bfa7-53dc4f652595
    3c2e1b48-a441-4267-ae5b-df9bd0e8a6d4
    96ca551e-f200-4f7e-8141-d6429a33c4eb
    3ea29c75-02df-4127-9c02-bb8a91821519
    ```

  into a comma-separated list of quoted UUIDs for use in a SQL query:
    ```
    ('0015ff92-7f1a-4f22-b34e-3997701ecc94',
    '001bb00d-fcc0-4a01-bfa7-53dc4f652595',
    '3c2e1b48-a441-4267-ae5b-df9bd0e8a6d4',
    '96ca551e-f200-4f7e-8141-d6429a33c4eb',
    '3ea29c75-02df-4127-9c02-bb8a91821519')
    ```

## 3. Ergonomics
Using only the keyboard will mean that your hands won't need to move to-and-from a trackpad or mouse
all the time. You also won't need to waste time locating where the trackpad is, or repositioning your
hands on the keyboard after returning from the trackpad.

This all reduces the incidence of repetitive-strain injuries (RSI), and will lead to a much more
comfortable coding experience!


## 4. Curiosity
You probably have come across Vim before - either seeing it being used by a colleague, or spoken
about in discussions about editor choices.

You've probably wondered about some questions as: So what exactly is Vim? How on earth do I get
started?

By the end of this tutorial you will be able to use Vim fairly comfortably - tick that off your To Do list!


---
[Let's get started!](00-setup.md)


