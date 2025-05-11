---
title: Forcing Tab Types Per Language in TextMate
date: 2010-09-24 00:00 UTC
tags:
---

<p>Personally, I&#8217;m a hard-tabs guy.  I like coding with invisibles enabled, I like being able to adjust the size of my tabs on a whim and I like that I&#8217;m not bloating by markup with unnecessary white-space.  Unfortunately, some languages and methodologies prefer them so I found myself stuck switching back and forth frequently. </p>

<p>TextMate, being one of (if not THE) best editors for OSX, has a pretty handy solution for this.  You can edit a languages bundle to force the default soft tabs setting per language.</p>

<p>Open up the bundle editor ( Bundles -> Bundle Editor -> Show Bundle Editor), click the carrot next to your language of choice to expand that language&#8217;s bundle items and find the entry marked &#8220;Miscellaneous&#8221; .  Now, you just need to append to the &#8220;shellVariables&#8221; object a quick shell variable setting -</p>

<pre><code>shellVariables = (
    &#123;
        name = 'TM_SOFT_TABS';
        value = 'no';
    &#125;,
);
</code></pre>

<p>If the shellVariables object doesn&#8217;t exist, don&#8217;t worry, it&#8217;s safe to just create a new one.  For instance, the default CSS miscellaneous bundle preferences look like this:</p>

<pre><code>&#123;
    smartTypingPairs = (
        ( '"', '"' ),
        ( '(', ')' ),
        ( '&#123;', '&#125;' ),
        ( '[', ']' ),
        ( '"', '"' ),
        ( "'", "'" ),
        ( '`', '`' ),
    );
&#125;
</code></pre>

<p>And the new adjusted preferences with soft tabs explicitly disabled:</p>

<pre><code>&#123;
    shellVariables = (
        &#123;
            name = 'TM_SOFT_TABS';
            value = 'no';
        &#125;,
    );
    smartTypingPairs = (
        ( '"', '"' ),
        ( '(', ')' ),
        ( '&#123;', '&#125;' ),
        ( '[', ']' ),
        ( '"', '"' ),
        ( "'", "'" ),
        ( '`', '`' ),
    );
&#125;
</code></pre>
