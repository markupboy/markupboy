---
title: An Event Apart - Chicago
slug: an-event-apart-chicago
date: 2009-10-14 00:00 UTC
tags:
---

<p>For two days in Chicago, I had the privilege to attend An Event Apart - "an intensely educational two-day conference for passionate practitioners of standards-based web design" (from <a href="http://aneventapart.com">http://aneventapart.com</a>).  Divided amongst 12 hour-long sessions, we had the privilege of learning about everything from design to content strategy to in-depth javascript and css techniques from some of the top figures in the industry.</p>

<p>While there's way too much information to go over each bit in detail here, what follows is a notable sound byte from each presenter and an overview of how it fit into their overall presentation:</p>

<h3 id="8220one_of_the_biggest_tragedies_in_design_is_having_a_beautiful_site_that_fails_with_real_content8221">"One of the biggest tragedies in design is having a beautiful site that fails with real content"</h3>

<p><em>A Site Redesign</em> - Jeffery Zeldman, author, Designing With Web Standards, 3rd Ed.</p>

<p>A common problem in our business, having a beautiful design filled with Lorem Ipsum text. We're all capable of generating content; even if it isn't production ready we can make it realistic.  We shouldn't be designing specifically for a specific number of lines of text or a fixed amount of characters.  Designing from realistic content out instead of from visual design in (with content coming later) will allow our sites to be more flexible, easier to maintain and in the end more sustainable.</p>

<h3 id="8220design_systems_not_pages8221">"Design systems, not pages."</h3>

<p><em>Thinking Small</em> - Jason Santa Maria, web designer</p>

<p>To maximize flexibility, we should be designing visual systems instead of specific pages.  Using modular design speeds up the design process, allowing design pieces to be mixed and matched without the need for designing every aspect of every page.  Again, using this approach makes sites more flexible, easier to develop, easier to maintain and even simpler to refresh layouts with little overhead.</p>

<h3 id="8220content_is_not_a_feature8221">"Content is not a feature"</h3>

<p><em>Content First</em> - Kristina Halvorson, author, Content Strategy for the Web</p>

<p>Content shouldn't be an afterthought.  The backbone of information driven sites is the content itself and should be as integral a part of website creation as development or design.  In fact, content can help dictate design patterns, look and feel for specific pages or even the tone of how a page is meant to be presented. All content has to be planned for - headers, body copy, footer text, error messages, titles, descriptions, alt text, metadata, everything.</p>

<h3 id="8220everyone_is_a_ux_designer_whether_it8217s_in_your_title_or_not8221">"Everyone is a UX designer whether it's in your title or not"</h3>

<p><em>DIY UX: Give Your Users an Upgrade (Without Calling in a Pro)</em> - Whitney Hess, Strategic Partner, Happy Cog</p>

<p>Everyone involved in web design and development, whether they are UX people or not, are UX designers.  We all have an influence over how users perceive and use a site from the feelings the visual design conveys to the responsiveness of the front-end implementation.  The best way to find break downs in any of these aspects is to get the site in front of users, to do user testing.  Testing doesn't have to be expensive or complicated, it can be as simple as asking people you know, people you work with (but not on the same project) or people that just happen to be around at any given time to use something and give feedback.  The trick is to make sure they don't feel compelled to say "oh it's good" because being "good" won't make your site any better.  Get users to tear it apart and grow from there</p>

<h3 id="8220static_designs_fail_by_definition8221">"Static designs fail by definition"</h3>

<p><em>Walls Come Tumbling Down</em> - Andy Clarke, author, Transcending CSS</p>

<p>Websites aren't just carbon copies of photoshop comps.  They're living breathing things that act and react to user input.  Why, then, do we continue to get client signoff based on static comps?  Designing in the browser itself with CSS can potentially take the same amount of (if not less) time that putting together a comp in photoshop but in the end you have a living document that's clickable, scrollable and easily adapted to be used in production.  How long would it take to change every single font-face in a comp?  With CSS it takes minutes.</p>

<h3 id="8220over_time_plugins_like_the_flash_player_will_give_way_to_script8221">"Over time, plugins like the Flash player will give way to &lt;script&gt;"</h3>

<p><em>Javascript Will Save Us All</em> - Eric Meyer, author, CSS: The Definitive Guide, 3rd Ed.</p>

<p>The improvement of Javascript engines in just the past few years is astonishing.  Just think of how far we've come from MapQuest to Google and the interface improvements it affords.  At the core of all of these great applications - Facebook, Mint, Google Docs and Maps and More - is just HTML, CSS, and Javascript.  We're currently in a pattern of using JS to bring legacy browser into the present - patching in support for basic features today that just didn't exist when browsers like Internet Explorer 6 debuted.  If we flip our thinking a bit, however, there's no reason that we can't use javascript to push current browsers even further into the future.  </p>

<h3 id="8220it8217s_cheaper_to_build_something_than_to_have_the_meeting_to_discuss_the_thing_you_might_build8221">"It's cheaper to build something than to have the meeting to discuss the thing you might build"</h3>

<p><em>Building Stuff Fast-And Getting It Approved</em> - Simon Willison, Developer, Guardian News and Media</p>

<blockquote>
<p><strong>1 hour kick off meeting, 6 people</strong>
<strong>= 6 man hours</strong></p>

<p><strong>4 hours prototyping, 1 developer</strong>
<strong>= 4 man hours</strong></p>
</blockquote>

<p>Developing web applications isn't difficult.  No really, it isn't.  What's difficult is coming up with an idea, getting everyone on the same page, getting client sign-off, coming up with a core visual identity, going through rounds and rounds of approvals and so on.  Thanks to web development frameworks like dJango, Rails and Symfony all of the repetitiveness of building the core functionality of a web app has been boiled down to a few lines of code and maybe a terminal command or two.  The sooner you get your stuff in front of users, the more apparent it becomes what they <em>actually</em> want and what is <em>actually</em> wrong with what you've done.  Plus, banging out great prototypes is more fun than sitting in meetings anyway.  </p>

<h3 id="8220forms_suck8221">"Forms suck"</h3>

<p><em>Web Form Design in Action</em> - Luke Wroblewski, author, Web Form Design</p>

<p>No one likes filling out forms.  Unfortunately the web runs on them.  We can't have user generated content, content management systems, web applications or any of it without forms.  While they may be the doldrums of user experience, they don't have to be bare and confusing and inelegant. There are a few ways we can go about making form submission as painless as possible and, in turn, reduce fall-off before people click submit:</p>

<ul>
<li>Have a clear path to completion</li>
<li>Align labels consistently (top aligned labels can increase form entry speed by 10x)</li>
<li>Add help and tips to anything unfamiliar or with constraints</li>
<li>Use inline validation to avoid pogo-sticking back and forth between submission and feed back</li>
<li>Separate out visual cues for primary form actions</li>
<li>Organize your forms logically</li>
<li>Gradually engage users - only get the information you actually need to continue up front</li>
</ul>

<h3 id="8220we_are_product_designers8221">"We are product designers"</h3>

<p><em>Designing Virtual Realism</em> - Dan Rubin, co-author, Web Standards Creativity</p>

<p>The unfortunate part of designing for the web is that you can't touch it except through extensions to ourselves (mice, keyboards, etc.) but most principles product design apply to the web.  If you design for intuition, your sites will <em>feel</em> better.  It may not be quantitative, but a site that feels better and looks better will actually have better response from users, even if it isn't any more function than it's competitors (case in point, the original Apple iPod, beautifully simple and simply beautiful).</p>

<h3 id="8220do_websites_need_to_be_experienced_exactly_the_same_in_every_browser_nope8221">"Do websites need to be experienced exactly the same in every browser? Nope"</h3>

<p><em>Progressive Enrichment With CSS3</em> - Dan Cederholm, author, Bulletproof Web Design</p>

<p>CSS3 is a wonderful tool that can't necessarily be used for mission critical implementation but can be used to enrich experiences in browsers that support them. Experience is the layer that lives on top of good markup and style and css3 is the icing on top of that. </p>

<p>All in all it was a fantastic conference and I'll leave it with my favorite thing that was said by Jeffery Zeldman himself:</p>

<blockquote><p><strong>"Real web designers write code. Always have, always will."</strong></p></blockquote>
