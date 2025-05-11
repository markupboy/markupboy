---
title: jQuery 101 - The Slice Method
slug: jquery-101-the-slice-method
date: 2009-10-21 00:00 UTC
tags:
---

<p>Continuing the 101 series, this we're time hopping over to javascript and a look into part of my favorite library <a href="http://www.jquery.com">jQuery</a>.  More specifically <a href="http://docs.jquery.com/Traversing/slice#startend">slice()</a>.  In a nutshell, we can use slice to manipulate a set of match objects grabbed out of the DOM by the jQuery core method.  </p>

<p>If you're familiar at all with the basic <a href="http://www.w3schools.com/jsref/jsref_slice_array.asp">JavaScript slice() method</a> it's application here is nearly identical.  Slice() takes two arguments: a start value and an option end value.  Just like in slicing in an array, performing a slice() on a jQuery set returns the elements starting at the start position and ending just before the end position.  If no end is given (remember, that one's optional), the returned set starts at 'start' and ends at the end of set.</p>

<p>Now, that might not sound quite so straight forward but let's step back and remember one fundamental aspect of jQuery: a jQuery set is really just an array and the array is ordered in the same order each element is found in the DOM.  Take this list for instance:</p>

<pre><code class="html">&lt;ul class="colors"&gt;
    &lt;li&gt;Red&lt;/li&gt;
    &lt;li&gt;Orange&lt;/li&gt;
    &lt;li&gt;Yellow&lt;/li&gt;
    &lt;li&gt;Green&lt;/li&gt;
    &lt;li&gt;Blue&lt;/li&gt;
    &lt;li&gt;Indigo&lt;/li&gt;
    &lt;li&gt;Violet&lt;/li&gt;
&lt;/ul&gt;
</code></pre>

<p>We can create a set of those list items using:</p>

<pre><code class="js">$('ul.colors');
</code></pre>

<p>Now, that by itself doesn't do anything at all, but we can visualize the set as an array with "Red" at position zero, "Orange" at position one, "Yellow" at position two and so on.  This makes figuring out slice a piece of cake.  Let's see how it might work in practice:</p>

<pre><code class="js">$('ul.colors').slice(2,4).hide();
</code></pre>

<p>Will hide "Yellow" and "Green" (We start at position 2 and end just before position 4). </p>

<p>Another fun trick is using a negative number for the start position.  When a negative number is passed in the slice starts from the <em>end</em> of the array instead of the beginning.  This would mean that</p>

<pre><code class="js">$('ul.colors').slice(-3).hide();</code></pre>

<p>will hide "Blue", "Indigo" and "Violet".  Now obviously these examples aren't exactly real world practice but they help illustrate the point.  Good places to use this is in dealing with paging for circular carousels (a discussion for another day), in page pagination (hiding everything but the first three paragraphs of a post with a "read more" link) and more.</p>

<p>There is even another nice pro-tips about jQuery's slice: it's non-destructive on existing variables:</p>

<pre><code class="js">var colors = $('ul.colors');
colors.slice(1,4).hide();
</code></pre>

<p>If we run console.log(colors), the entire set is still there, "Red" through "Violet".</p>

<p>So there you have it - the jQuery slice() method; another invaluable tool in the front-end developers toolkit.</p>
