---
title: Truth, Equality and JavaScript
slug: truth,-equality-and-java-script
date: 2011-02-07 00:00 UTC
tags:
external_url: http://javascriptweblog.wordpress.com/2011/02/07/truth-equality-and-javascript/
---

New post on Angus Croll's [JavaScript, JavaScript](http://javascriptweblog.wordpress.com) blog on the crazy intricacies of how JavaScript handles equality and truth with examples like:

    if([0]) {
      console.log([0] == true); //false
      console.log(!![0]); //true
    }
