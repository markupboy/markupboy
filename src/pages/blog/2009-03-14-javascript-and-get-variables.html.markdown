---
title: Javascript and GET Variables
date: 2009-03-14 00:00 UTC
tags:
category: Articles
---

<p>Ever needed to deeplink an ajax application or prepopulate some form variables from a GET string on the client-side? &nbsp;Well, here's a little javascript snippet that will help accomplish just that:</p>
<p><code class="js">function splitURLVars() {
&nbsp;&nbsp;var getData = new Array();<br />
&nbsp;&nbsp;&nbsp;&nbsp;var vars = window.location.search;<br />
&nbsp;&nbsp;&nbsp;&nbsp;if (vars) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vars = vars.substr(1);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var pairs = vars.split("&amp;");<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (var i = 0; i &lt; pairs.length; i++) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var formData = pairs[i].split("=");<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var name = formData[0];<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var value = formData[1];<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;getData[name] = value;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
&nbsp;&nbsp;return getData;<br />
};</code></p>
