---
title: Capabilities
permalink: /capabilities/
description: Reusable business abilities required to execute public-sector workloads.
scripts:
  - /assets/js/catalog-search.js
---
<header class="page-hero"><div class="container"><p class="eyebrow">The ability</p><h1>Capabilities</h1><p class="lede">What must an agency be able to do? Capabilities are reusable across workloads when the underlying ability is substantively the same.</p></div></header>
<section class="listing"><div class="container">
  <p class="listing-intro">Capability pages connect a reusable business ability to the workloads that need it, the use cases that apply it, and the solution pattern that enables it.</p>

  <form class="catalog-search" role="search" data-catalog-search data-noun="capabilities" hidden>
    <label class="sr-only" for="capability-search-input">Search capabilities</label>
    <div class="catalog-search-field">
      <input id="capability-search-input" type="search" name="q" placeholder="Search by capability, summary, or workload" autocomplete="off" autocapitalize="off" spellcheck="false">
      <button class="catalog-search-clear" type="button" hidden><span class="sr-only">Clear search</span><span aria-hidden="true">&times;</span></button>
    </div>
    <p class="catalog-search-status" role="status" aria-live="polite"></p>
  </form>

  {% if site.capabilities.size > 0 %}<div class="card-grid">{% for item in site.capabilities %}{% capture haystack %}{{ item.title }} {{ item.summary }} {{ item.workload | default: item.eyebrow }}{% for section in item.sections %} {{ section }}{% endfor %}{% endcapture %}<a class="card" href="{{ item.url | relative_url }}" data-search="{{ haystack | normalize_whitespace | downcase | escape }}"><p class="card-kicker">{{ item.workload | default: item.eyebrow }}</p><h3>{{ item.title }}</h3><p>{{ item.summary }}</p><p class="card-link">Explore capability →</p></a>{% endfor %}</div>{% else %}<div class="empty-state"><h3>Capabilities are the reusable ability</h3><p>A reusable business ability required to execute one or more workloads.</p></div>{% endif %}

  <div class="empty-state catalog-search-empty" hidden>
    <p>No capabilities match <strong class="catalog-search-term"></strong>.</p>
    <p>Try a broader term such as <em>case</em>, <em>evidence</em>, <em>intake</em>, or <em>reporting</em> — or search by workload name like <em>Investigations</em>.</p>
  </div>
</div></section>
