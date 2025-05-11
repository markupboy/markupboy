---
title: Terminal Tip - Copying Your Current Path to the Clipboard
date: 2011-01-13 00:00 UTC
tags:
---

I spend most of my day bouncing between the terminal and TextMate and often need the full path of where ever I happen to be in my shell.  OS X comes with a great built-in terminal command - <code>pbcopy</code> - for just such occasions.

Copying your path to the clipboard is as easy as getting the present working directory and piping it to <code>pbcopy</code>

    pwd | pbcopy

I found, though, that this leaves the carriage return at the end of what was copied.  We can fix this using the translate characters command <code>tr</code>.

    pwd | tr -d "\r\n" | pbcopy

This will remove all instances of the carriage return / line feed pair coming out of <code>pwd</code> and pass it to your clipboard.  Of course, it's not the easiest thing to remember, so I've aliased it to the command <code>getpath</code> in my shell configuration

    alias getpath='pwd | tr -d "\r\n" | pbcopy'

And that's it.  Now when I'm in a terminal session I can simply run <code>getpath</code> and my location in the filesystem is copied right into my clipboard.

__UPDATE__: With a recent update, my getpath alias stopped working.  For whatever reason, `tr` just stopped trimming `pwd`s output correctly.  Fortunately, I happened on an even easier way to grab the current path by piggy-backing on the `$PWD` environment variable.  So here's the new and improved get path:

    alias getpath='echo -n $PWD|pbcopy|echo "current path copied to clipboard"'
