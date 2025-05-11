---
title: "Banishing &lt;div class='clear'&gt;"
slug: banishing-lt-div-class-clear-gt
date: 2009-03-19 00:00 UTC
tags:
---

<p>When dealing with floating containers in HTML and CSS, we all too often turn to the clearing div to make a clean break between container rows.  I'm sure you've seen this before:</p>

<code class="html">&lt;div class=&quot;clear&quot;&gt;&lt;/div&gt;
</code>

<p>and in the css:</p>

<code class="css">div.clear { clear: both; }
</code>

<p>Sure, it works.  It always has worked and it always will.  It's not the most elegant solution, though; it's not semantic and with enough floated containers it can really start to clutter up your markup.Enter the "overflow: hidden" trick. It's not a silver bullet nor will it work in every single situation but it might just save you some markup by using some that you probably already have.</p>

<p>It goes a little something like this. If your floated containers happen to share a common parent (like a wrapper div, or maybe you've got a bunch of floated list items contained in a ul or ol tag) <strong>simply set the width of the parent and apply the attribute "overflow: hidden"</strong> like so: </p>

<code class="html">&lt;!-- the html --&gt;<br />
&lt;div class=&quot;parent&quot;&gt;<br/>
&nbsp;&lt;p class=&quot;column-1&quot;&gt;<br/>
&nbsp;&nbsp;This is column one<br/>
&nbsp;&lt;/p&gt;<br/>
&nbsp;&lt;p class=&quot;column-2&quot;&gt;<br/>
&nbsp;&nbsp;This is column two<br/>
&nbsp;&lt;/p&gt;<br/>
&lt;/div&gt;
</code>

<code class="css">/_ the css _/<br />
.parent {<br />
&nbsp;width: 400px;<br />
&nbsp;overflow: hidden<br />
}<br />
<br />
.column-1 {<br />
&nbsp;width: 180px;<br />
&nbsp;float: left;<br />
}<br />
<br />
.column-2 {<br />
&nbsp;width: 180px;<br />
&nbsp;float: right;<br />
}
</code>

<p>"Surely that can't work," you might say, "the content in the parent element will be clipped!" On the contrary: by not giving the parent container an explicit height only the horizontal space is constrained; the parent will stretch to accommodate its contents while clearing out any elements that aren't contained within it resulting in something a little like this (colors and padding added for demonstration):</p>

<div style="width: 360px; background-color: #333; padding: 20px; overflow: hidden; margin-bottom: 1em;">
 <p style="width: 150px; float: left; background-color: #ccc; padding: 10px; margin-right: 5px; margin-bottom: 0;">
  This is column one
 </p>
 <p style="width: 150px; float: right; background-color: #ccc; padding: 10px; margin-right: 5px; margin-bottom: 0;">
  This is column two
 </p>
</div>

<p>So there you have it, a simple and effective alternative to the clear div</p>
