---
title: Workloads
permalink: /workloads/
description: Durable areas of government work, explored through consistent mission and technology lenses.
---
<header class="page-hero"><div class="container"><p class="eyebrow">Mission view</p><h1>Workloads</h1><p class="lede">Understand what government needs to accomplish before deciding how technology should help.</p></div></header>
<section class="listing"><div class="container">
  <p class="listing-intro">Every workload brings together its outcomes, capabilities, use cases, personas, pain points, data, AI opportunities, discovery questions, measures, maturity, and reference architecture. Most are catalog entries establishing scope and measures; a workload showing a capability count has been built out to full depth.</p>
{% assign areas = site.data.workload_areas | sort: "order" %}{% for area in areas %}{% assign items = site.workloads | where: "area", area.id | sort: "title" %}{% if items.size > 0 %}
  <div class="listing-group">
    <h2>{{ area.title }}</h2>
    <p>{{ area.description }}</p>
    <div class="card-grid">{% for item in items %}{% assign caps = site.capabilities | where: "workload", item.title %}<a class="card" href="{{ item.url | relative_url }}"><p class="card-kicker">{% if caps.size > 0 %}{{ caps.size }} capabilities{% else %}{{ item.eyebrow }}{% endif %}</p><h3>{{ item.title }}</h3><p>{{ item.summary }}</p><p class="card-link">Explore workload →</p></a>{% endfor %}</div>
  </div>
{% endif %}{% endfor %}
</div></section>
