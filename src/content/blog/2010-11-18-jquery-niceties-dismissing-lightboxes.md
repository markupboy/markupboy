---
title: jQuery Niceties - Dismissing Lightboxes
slug: jquery-niceties-dismissing-lightboxes
date: 2010-11-18 00:00 UTC
tags:
---

<p>Lightboxes have been the all the rage for years now; especially since frameworks like <a href="http://www.jquery.com">jQuery</a> make them fairly easy to accomplish.  One little piece that I always find lacking, though, is even the tiniest bit of keyboard support. Want to help your power users out a bit? Bind the escape key to dismissing lightboxes.</p>

<p>The most straightforward way is simply to bind the escape key to trigger a click on the lightbox close button once the lightbox is open.  </p>

<pre><code>$(document).bind('keyup', function(e) {
    if(e.keyCode == 27) {
        $('.lightbox a.close').click();
    }
})
</code></pre>

<p>If you don't want it permenantly bound, you can always bind the event when the lightbox opens and unbind the event when the lightbox closes.  Unforutnately this is a little brittle as it depends on the functionality of closing the lightbox to be bound to the close button (or for the close button to in turn trigger the closing of the lightbox). We can use custom event binding to make it all a little more elegant.</p>

<p>First, bind a custom event to the lightbox that can be triggered when it needs to be dismissed:</p>

<pre><code>$('.lightbox').bind('dismiss', function() {
    // code to dismiss lightbox
});
</code></pre>

<p>And then just trigger that event when escape it pressed:</p>

<pre><code>$(document).bind('keyup', function(e) {
    if(e.keyCode == 27) {
        $('.lightbox').trigger('dismiss');
    }
});
</code></pre>

<p>The nice thing here is that the dismiss code can now be executed by any event that needs it (saving a form in the lightbox, clicking the close button, pressing escape, etc.) without code being duplicated.</p>

<p>Some further reading that might be of interest:</p>

<ul>
<li>Working with Events <a href="http://www.learningjquery.com/2008/03/working-with-events-part-1">Part 1</a> and <a href="http://www.learningjquery.com/2008/05/working-with-events-part-2">Part 2</a> over at <a href="http://www.learningjquery.com">Learning jQuery</a></li>
<li><a href="http://markupboy.com/blog/limiting-characters-in-a-textarea-with-jquery/">My article on limiting characters in a text area</a> which covers keybinding </li>
</ul>
