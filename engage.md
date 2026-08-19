---
title: Engage
permalink: /engage/
description: Reusable tools for assessing, envisioning, designing, and planning with customers and practitioners.
---
<header class="page-hero"><div class="container"><p class="eyebrow">Collaboration view</p><h1>Explore together</h1><p class="lede">Use the knowledge system to guide conversations, assess current work, envision better workflows, and plan practical initiatives.</p></div></header>
<section class="listing"><div class="container">
  <p class="listing-intro">Engagement tools reuse capability and workload content, giving teams a thoughtful starting point rather than an empty canvas.</p>
  {% if site.tools.size > 0 %}<div class="card-grid">{% for item in site.tools %}<a class="card" href="{{ item.url | relative_url }}"><p class="card-kicker">{{ item.stage | default: item.eyebrow }}</p><h3>{{ item.title }}</h3><p>{{ item.summary }}</p><p class="card-link">Open tool →</p></a>{% endfor %}</div>{% else %}<div class="empty-state"><h3>Four reusable tools are planned</h3><p>Capability Assessment, Opportunity Workshop, Future-State Canvas, and Solution Design Canvas will be introduced after the lighthouse content is established.</p></div>{% endif %}
</div></section>

