---
title: Architecture Library
permalink: /architecture-library/
description: Reference architectures, solution patterns, and implementation patterns in one place.
---
<header class="page-hero"><div class="container"><p class="eyebrow">Technical view</p><h1>Architecture Library</h1><p class="lede">Reusable technical foundations, patterns, and concrete designs that carry a vendor-neutral approach from landscape down to buildable detail.</p></div></header>
<section class="listing"><div class="container">
  <p class="listing-intro">A Reference Architecture supports a workload. A Solution Pattern enables a capability. An Implementation Pattern addresses a use case. Each is defined independently of any product, with technology options shown only once the vendor-neutral shape is understood.</p>

  <div class="listing-group">
    <h2>Reference Architectures</h2>
    <p>The technology landscape a workload needs, assembled from the solution patterns that enable its capabilities plus the workload-specific systems, data domains, and integration that don't generalize.</p>
    {% if site.architectures.size > 0 %}<div class="card-grid">{% for item in site.architectures %}<a class="card" href="{{ item.url | relative_url }}"><p class="card-kicker">{{ item.workload | default: item.eyebrow }}</p><h3>{{ item.title }}</h3><p>{{ item.summary }}</p><p class="card-link">View architecture →</p></a>{% endfor %}</div>{% else %}<div class="empty-state"><h3>Architectures will follow demonstrated reuse</h3><p>The first candidate will support the Fleet Management workload once its capabilities are built out.</p></div>{% endif %}
  </div>

  <div class="listing-group">
    <h2>Solution Patterns</h2>
    <p>Reusable, vendor-neutral technical approaches that enable one or more capabilities — extracted from real capabilities, not invented ahead of them.</p>
    {% if site.patterns.size > 0 %}<div class="card-grid">{% for item in site.patterns %}<a class="card" href="{{ item.url | relative_url }}"><p class="card-kicker">{{ item.pattern_type | default: item.eyebrow }}</p><h3>{{ item.title }}</h3><p>{{ item.summary }}</p><p class="card-link">Explore pattern →</p></a>{% endfor %}</div>{% else %}<div class="empty-state"><h3>Patterns will emerge from the first capabilities</h3><p>Connected Fleet Maintenance is the first candidate, enabling Vehicle Maintenance Management.</p></div>{% endif %}
  </div>

  <div class="listing-group">
    <h2>Implementation Patterns</h2>
    <p>Narrow, trigger-to-outcome technical designs that address one or more use cases, composing into a broader solution pattern.</p>
    {% if site.implementation_patterns.size > 0 %}<div class="card-grid">{% for item in site.implementation_patterns %}<a class="card" href="{{ item.url | relative_url }}"><p class="card-kicker">{{ item.eyebrow }}</p><h3>{{ item.title }}</h3><p>{{ item.summary }}</p><p class="card-link">View implementation pattern →</p></a>{% endfor %}</div>{% else %}<div class="empty-state"><h3>Implementation patterns will follow real use cases</h3><p>The first candidate will pair a Vehicle Maintenance Management use case with a concrete, bounded design.</p></div>{% endif %}
  </div>
</div></section>
