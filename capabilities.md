---
title: Capabilities
permalink: /capabilities/
description: Reusable business abilities required to execute public-sector workloads.
---
<header class="page-hero"><div class="container"><p class="eyebrow">The ability</p><h1>Capabilities</h1><p class="lede">What must an agency be able to do? Capabilities are reusable across workloads when the underlying ability is substantively the same.</p></div></header>
<section class="listing"><div class="container">
  <p class="listing-intro">Capability pages connect a reusable business ability to the workloads that need it, the use cases that apply it, and the solution pattern that enables it.</p>
  {% if site.capabilities.size > 0 %}<div class="card-grid">{% for item in site.capabilities %}<a class="card" href="{{ item.url | relative_url }}"><p class="card-kicker">{{ item.workload | default: item.eyebrow }}</p><h3>{{ item.title }}</h3><p>{{ item.summary }}</p><p class="card-link">Explore capability →</p></a>{% endfor %}</div>{% else %}<div class="empty-state"><h3>Capabilities are the reusable ability</h3><p>A reusable business ability required to execute one or more workloads.</p></div>{% endif %}
</div></section>
