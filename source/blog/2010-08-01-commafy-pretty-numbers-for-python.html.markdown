---
title: Commafy - Pretty Numbers for Python
date: 2010-08-01 00:00 UTC
tags:
---

<p>I've been spending more and more time in Python and Django lately working on side project <a href="http://lostaga.in">lostaga.in</a> and <a href="http://vigetmspacman.markupboy.com">Viget Ms. Pac-Man</a>. &nbsp;Here's a quick method I put together for formatting numbers with commas:</p>

<pre><code>def commafy(d):
  s = '%0.2f' % d
  a,b = s.split('.')
  l = []
  while len(a) &gt; 3:
      l.insert(0,a[-3:])
      a = a[0:-3]
  if a:
      l.insert(0,a)
  return ','.join(l)
</code></pre>
