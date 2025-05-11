---
title: Removing Default Form Input Values on Click
slug: removing-default-form-input-values-on-click
date: 2009-03-15 00:00 UTC
tags:
---

<p>For an alternative method, see <a href="https://markupboy.com/blog/a-better-method-for-clearing-default-form-input-values/">A Better Method for Clearing Default Form Input Values</a></p></p>
<p>Another quick and dirty jQuery trick.  I often find myself wanting to place form instructions ('enter name here' or what have you) using the value attribute.  Forcing a user to manually delete this information isn't what I would call great usability.  But, with a little bit of javascripting, removing and replacing defaults on click is a piece of cake:</p>
<p><code class="js">$('input[type=text], textarea').each(function() {&nbsp;<br />
 $(this).focus(function() {<br />
&nbsp;&nbsp;if($(this).val() == this.defaultValue)<br />
&nbsp;&nbsp;&nbsp;&nbsp;$(this).val("");<br />
&nbsp;&nbsp;});<br />
&nbsp;&nbsp;$(this).blur(function() {<br />
&nbsp;&nbsp;&nbsp;&nbsp;if($(this).val() == "")<br />
&nbsp;&nbsp; &nbsp; &nbsp;$(this).val(this.defaultValue);<br />
&nbsp;&nbsp;});<br />
});</code></p>
<p>
Simple, right?  Now, every time a user clicks a form input or textarea, it will remove the default value.  On blur, if no new text was entered, the default value was replaced.  If at anytime new data was inserted, it won't ever be removed or replaced but if ever on blur the input is empty, the default value is replaced.  Enjoy!</p>
