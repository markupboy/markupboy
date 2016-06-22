---
title: A Better Method for Clearing Default Form Input Values
date: 2009-10-17 00:00 UTC
tags:
---

<p>A while back I wrote a quick post on <a href="http://markupboy.com/removing-default-form-input-values-on-click/">how to clear default form values on click</a>. Using jQuery, we leveraged the "defaultValue" variable associated with each input object and on focus simply checked whether the current value equalled the defaultValue.  If it did, we cleared it, easy as that.</p>

<p>Unfortunately, that's not as semantic as it could be (even less so if we're not already using a label). On top of that when the form is submitted we have to check every form element we've handled this way and clear it out if it hasn't been set; if we don't, the default values will end up getting submitted.</p>

<p>Using an alternate method we can get around this altogether:</p>

<p>Start with a basic, completely semantic text-input with a label</p>

<pre><code class="html">&lt;p class="input_group"&gt;
    &lt;label for="find_a_location"&gt;Find a Location&lt;/label&gt;
    &lt;input type="text" name="find_a_location"
        value="" id="find_a_location"&gt;&lt;/input&gt;
&lt;/p&gt;
</code></pre>

<p>The input is as plain as it gets, with a name and an id.  The label's nothing too special either, just make absolutely sure the 'for' attribute matches the inputs id. The last piece is that I've gone ahead and wrapped the two in another tag and classed it "input_group".  This doesn't have to a paragraph tag (a span or li would work just as well), but know that whatever you use will end up having to act a block level element for the positioning of the label.</p>

<p>
 <img src="http://markupboy.com/demos/betterclearingdefaults/nocss.jpg" alt="No CSS" />
</p>

<p>Next, a dash of CSS to pretty things up a bit.  Start by styling the input itself; not terribly necessary, but certainly makes everything more attractive:</p>

<pre><code class="css">input {
    width: 350px;
    border: 10px solid #e2e1d4;
    font-size: 14px;
    padding: 7px;
    outline: none;
    border-radius: 7px;
    -webkit-border-radius: 7px;
    -moz-border-radius: 7px;
}

input:focus {
    border: 10px solid #9c836e;
}
</code></pre>

<p>Adding the :focus pseudo-class helps to draw a users attention to the active field. </p>

<p>Next we need to set up the input_group so that we can position the label correctly:</p>

<pre><code class="css">p.input_group {
    width: 350px;
    margin: 1em auto;
    position: relative;
}
</code></pre>

<p>And finally, drop the label over the input, giving the appearance that it's actually inside the input:</p>

<pre><code class="css">label {
    font-size: 14px;
    font-family: verdana;
    position: absolute;
    top: 19px;
    left: 19px;
}
</code></pre>

<p>We can even give the label a focus class (that will be triggered by javascript later) to push the illusion even further:</p>

<pre><code class="css">label.focus {
    opacity: 0.2;
    -moz-opacity: 0.2;
    filter:alpha(opacity=20);
}
</code></pre>

<p>
 <img src="http://markupboy.com/demos/betterclearingdefaults/fullcss.jpg" alt="Full CSS" />
</p>

<p>The last piece of the puzzle: the experience layer thanks to JavaScript. </p>

<p>Get started by looping through all the fields we want to set up:</p>

<pre><code class="js">$('p.input_group input').each(function() {
</code></pre>

<p>Set up some variables we'll need for later (mainly storing the label that points to this input):</p>

<pre><code class="js">    var id = $(this).attr('id'),
            $label = $('label[for='+id+']');
</code></pre>

<p>On page load, if there's already a value in the input, hide the label (this fixes an issue if the user hits the back button and the field is already filled):</p>

<pre><code class="js">    if($(this).val() != '') {
        $label.hide();
    }
</code></pre>

<p>When the input is focussed, add a 'focus' class to the label:</p>

<pre><code class="js">    $(this).focus(function() {
        $label.addClass('focus');
    });
</code></pre>

<p>When the input is blurred, remove that 'focus' class</p>

<pre><code class="js">    $(this).blur(function() {
        $label.removeClass('focus');
    });
</code></pre>

<p>When a key that adds to the input's value value (any letter, number or other ascii character) is pressed, hide the label because the user is actively typing in the field.</p>

<pre><code class="js">    $(this).bind('keydown', function(e) {
        if(e.keyCode &gt;= 48 ) {
            $label.hide();
        }
    });
</code></pre>

<p>When any key is release, check the value; if it's blank, show the label again.  This means when a user delete or backspaces through the field, cut's all the text or does anything to blank it out the label comes back</p>

<pre><code class="js">    $(this).bind('keyup', function() {
        if($(this).val() == '') {
            $label.show();
        }
    });
</code></pre>

<p>And close out the loop</p>

<pre><code class="js">});
</code></pre>

<p>
 <img src="http://markupboy.com/demos/betterclearingdefaults/cssandjs.jpg" alt="No CSS" />
</p>

<p>That's all there is to it. One thing to note, this isn't meant to be a replacement for the original method, merely an alternative.  There are situations where one will definitely be more viable than the other.  Just use whatever works best.</p>

<p><a href="http://markupboy.com/demos/betterclearingdefaults/">Check out the demo here</a></p>
