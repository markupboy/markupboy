---
title: Limiting Characters in a Textarea with jQuery
slug: limiting-characters-in-a-textarea-with-jquery
date: 2009-03-14 00:00 UTC
tags:
---

<p>Ran into the problem of limiting the characters of a text area on a form recently.  In my 8 minutes on google, all of the pure JS solutions felt cumbersome to me so i whipped together this little number in jQuery</p>
<p><code class="js">$("#textAreaID").keypress(function(e) {<br />
  if(e.charCode >= 48 )<br />
    if($(this).val().length > 150)<br />
      return false;<br />
});<br />
</code></p>
<p>Quick and dirty.  JQuery binds a function to the keypress even in the textarea.  This function checks if the keyCode of the pressed key is a character input key (<a href="http://www.cambiaresearch.com/c4/702b8cd1-e5b0-42e6-83ac-25f0306e3e25/Javascript-Char-Codes-Key-Codes.aspx">see here for a list of keycodes</a>) and, if it is and the character count is over the pre-determined limit, returns false.  Easy, right?</p>

<p>Please note, this does require pretty much any version of <a href="http://www.jquery.com">jQuery</a> to actually work</p>
