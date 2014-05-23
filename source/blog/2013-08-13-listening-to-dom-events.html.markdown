---
title: Listening to DOM Events
date: 2013-08-13 00:00 UTC
tags:
---

Working on a recent project, I ran into an issue with 1password autofill causing unexpected results with a form I'd built.  I needed to know what browser events were being fired on a specific field in order to debug the problem. There are a few options here - bind an event listener in-code to every conceivable event and then log the arguments passed to the console to see what the event happened to be **or** better yet, just use `monitorEvents`.

Recent versions of webkit browsers and firebug support the `monitorEvents` method, which takes a DOM object as it's only argument and will spit out every event occurring on that object to the console.  So you can run a bit of code like so

    monitorEvents(document.getElementBy('someid'))

where someid is the id of the thing you want to monitor and you're all set without ever having to touch your own code.
