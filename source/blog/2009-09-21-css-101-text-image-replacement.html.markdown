---
title: CSS 101 - Text-Image Replacement
date: 2009-09-21 00:00 UTC
tags:
---

<p>With the hope that it'll encourage me to post more often, I'm kicking off my first "column" here on <a href="http://www.markupboy.com">markupboy</a> - the 101 series.  Each post in the 101 series aims to be a small, easily digestible chunk of information and some sample code illustrating a basic technique or a solution to an every day problem. Enjoy!</p>

<p>For the first post, we'll take a look at a basic CSS technique that I can't seem to go a day without using: text-image replacement.  </p>

<p>The basic idea here is to take a block of web-safe text (be it a span, a paragraph, a header, a link or really anything) and replace it with an image representing that same text.  Now there are a number of reasons we might do this but most likely it's because we'd like to utilize a font that isn't web-safe.</p>

<p>Let's start with a pretty much standard use - a header:</p>

<pre><code class="html">&lt;h1&gt;Markupboy&lt;/h1&gt;
</code></pre>

<p>with a custom font or graphic:</p>

<p><img src="/images/uploads/bkg.h1.png" alt="Sample Header" title="" /></p>

<p>We'll start with a basic css selector just to get things rolling:</p>

<pre><code class="css">h1 { }
</code></pre>

<p>Next, we'll give the header the appropriate background image as well as a height and width to match:</p>

<pre><code class="css">h1 {
    background: url(/images/uploads/bkg.h1.png) left top no-repeat;
    height: 80px;
    width: 240px;
}
</code></pre>

<h1 style="background: url(/images/uploads/bkg.h1.png) left top no-repeat; height: 80px; width: 240px; text-indent: 0; overflow: visible;">
    Markupboy
</h1>

<p>As you can see, the image is there with the appropriate dimensions, but our text is still visible.  Here's where the real trick is, first set the 'overflow' property to hidden</p>

<pre><code class="css">h1 {
    background: url(/images/uploads/bkg.h1.png) left top no-repeat;
    height: 80px;
    width: 240px;
    overflow: hidden;
}
</code></pre>

<p>and then set 'text-indent' to '-9999px' (or any suitably large negative or positive number)</p>

<pre><code class="css">h1 {
    background: url(/images/uploads/bkg.h1.png) left top no-repeat;
    height: 80px;
    width: 240px;
    overflow: hidden;
    text-indent: -9999px;
}
</code></pre>

<h1 style="background: url(/images/uploads/bkg.h1.png) left top no-repeat; height: 80px; width: 240px; overflow: hidden; text-indent: -9999px">
    Markupboy
</h1>

<p>Setting the 'overflow' property to hidden on a block level element makes any child element (including text nodes) that falls outside of the rendering bounds of that parent element to be hidden.  Then, with 'text-indent', we're forcing the child text node to render as far outside the parent element as possible and there you have it.  We don't need any extra markup in this case and we don't have to resort to 'display: none' as that would cause accessibility issue with screen readers not even being able to access that text.  </p>

<p>To take it one step further and make our header a clickable link, we just need to modify the markup a bit</p>

<pre><code class="html">&lt;h1&gt;
    &lt;a href="http://www.markupboy.com"&gt;Markupboy&lt;/a&gt;
&lt;/h1&gt;
</code></pre>

<p>and adjust the css slightly</p>

<pre><code class="css">h1 a {
    background: url(/images/uploads/bkg.h1.png) left top no-repeat;
    height: 80px;
    width: 240px;
    display: block;
    overflow: hidden;
    text-indent: -9999px;
}
</code></pre>

<p>and now we've got a fully text replaced link in all it's clickable glory.  </p>

<h1>
    <a href="http://www.markupboy.com" style="background: url(/images/uploads/bkg.h1.png) left top no-repeat; height: 80px; width: 240px; display: block; overflow: hidden; text-indent: -9999px; float: none;">Markupboy</a>
</h1>

<p>The main difference you'll see here is the addition of 'display: block' to our CSS.  This is necessary simply because anchors are inline elements, which means height, width and text-indent will have no effect on them.</p>

<p>One thing to note, this example does only work for block-level elements so be careful in how you use it.  I'll be going over inline text-image replacement in the near future. </p>

<p>Well, that's it for the first entry in the 101 series.  If you have any questions, comments, or suggestions, feel free to drop me a line at blake[at]markupboy[dot]com.</p>
