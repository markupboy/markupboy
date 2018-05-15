---
title: Newd Now Supports Google's Proposal for Crawlable AJAX
date: 2009-10-08 00:00 UTC
tags:
---

<p>Yesterday morning, <a href="http://googlewebmastercentral.blogspot.com/2009/10/proposal-for-making-ajax-crawlable.html">Google posted a proposal for making AJAX crawlable on it's Webmaster Central Blog</a>.  They posited that using a standardized convention for fragment identifiers to represent AJAX application states, taking snapshots of these states using a headless browser and using an escaped version of the original application state fragments to render these snapshots to crawlers would allow for these applications to be indexable as well as being able to have search engines server back links to the AJAX states themselves.  </p>

<p>With minimal effort, these changes have been rolled into a fork of <a href="http://www.cpbgroup.com">Crispin Porter + Bogusky</a>'s open source project Newd.</p>

<p>Taking the <a href="http://domscripting.com/blog/display/41">Hijax</a> approach to web application development, Newd was engineered specifically to be entirely browsable without javascript.  Each state in the app was built based on a rendered static page and then rolled into the main application using <a href="http://www.jquery.com">jQuery</a> and a custom framework written around the modular approach to Newd's data feeds.  For instance:</p>

<pre><code>http://newd-example-domain/#topic
</code></pre>

<p>is simply a deep link, wired up with javascript, that allows the application to render the content at</p>

<pre><code>http://newd-example-domain/topics/topic
</code></pre>

<p>without refreshing or redirecting the user to a new location.  This allows all of your AJAX states to have static, crawlable equivalents.  </p>

<p>The downfall here is that when Google indexes "/topics/topic", that's the link it serves back to users in it's search results.  To subvert this, Newd has a simple javascript detection on pages rendered through "/topics/topic" - if JS is enabled, the user is redirected back to the AJAX app front-end at "/#topic".</p>

<p>Now, however, that redirection is unnecessary thanks to Google's proposed method. Updating the fragment identifiers is simple, all we need to do is at that extra bang to what is already being rendered ("#!topic" instead of "#topic"), making sure that anything parsing this new hash understands and appropriately ignores the exclamation point.</p>

<p>Up next, our static href's in the main navigation links can finally point to the AJAX state instead of having to be set to the static page.  </p>

<pre><code>&lt;a href="/topics/topic"&gt;Topic&lt;/a&gt;
</code></pre>

<p>becomes</p>

<pre><code>&lt;a href="#!topic"&gt;topic&lt;/a&gt;
</code></pre>

<p>Originally, when clicked these links would be parsed by javascript, the hash updated programatically and  the default behavior of following the link was prevented.</p>

<p>Finally, Newd needed a way to render the correct topic when presented with the escaped state in the query string (represented by Google's proposed "http://example.com/page?query&amp;<em>escaped</em>fragment_=state").  Being built on CakePHP using the Hijax approach, all static paths were set during the initial implementation which means Newd doesn't require a headless GUI for rendering HTML snapshots of all of its states. Instead, a render time it only needs to be made aware of any escaped states being passed through the url:</p>

<pre><code>if(isset($_GET['_escaped_fragment_'])) {
    $this-&gt;params['topic'] = $_GET['_escaped_fragment_'];
}
</code></pre>

<p>If the escaped state is passed in the query string, Newd's front_crontoller index method renders the data for the accompanying state for indexing.  This rendered page contains our original AJAX state fragments as links, which in turn will get served back through search engine results once crawled.</p>

<p>And that's it.  Bringing Newd up to meet this proposed standard took only a few hours thanks primarily it being based on the Hijax approach for AJAX applications. If this new proposal does indeed get adopted it means users will finally have direct access to AJAX content via search results, which is a very exciting prospect.</p>

<p>Browse or download the Newd source updated to this proposed standard at it's page on GitHub</p>
