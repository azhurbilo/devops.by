---
layout: page
title: Knowledge Base
excerpt: "Заметки по абсолютно любым темам для систематизации знаний и возможности быстро найти нужную информацию."
search_omit: true
---

<ul class="post-list">
{% for post in site.categories.knowledge-base %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt and post.excerpt_show %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
