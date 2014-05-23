---
title: Git quicky - locally ignore files
date: 2009-09-28 00:00 UTC
tags:
---

<p>Ever needed to modify a file locally but wanted to make sure it doesn't get committed and pushed back in to the stream? Well, if you're using Git, it's as easy as:</p>

<code>$ git update-index --assume-unchanged path/to/file.txt</code>

<p>Extremely helpful if you've got password changes in config files that you don't want committed</p>
