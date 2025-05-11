---
title: Front-End Formulation
slug: front-end-formulation
date: 2011-10-15 00:00 UTC
tags:
---

This project contains the blank template of what I use for front-end development projects.

**Why formulation?** Because I've started to dislike the term "boilerplate", and formulation had a nice ring to it.

Front-End Formulation is based around the SCSS syntax of [SASS](http://www.sass-lang.com) and [Compass](http://compass-style.org/) for assisting in CSS development, [Jammit](https://web.archive.org/web/20110625170229/http://documentcloud.github.com/jammit/) for JavaScript packaging, and (optionally) [HAML](https://web.archive.org/web/20110129181755/http://haml-lang.com/) for writing markup.

Getting started is as easy as running `bundle install` to install all necessary gems (see the [Gemfile](https://github.com/markupboy/front-end-formulation/blob/master/Gemfile) to see what is actually included). Once that's finished, run `guard` to begin watching the directory for changes to files handled by compass, jammit, or haml.
