---
layout: default
title: Business Blueprint
description: The problem, people, capabilities, processes, information, rules, and operating context—independent of implementation technology.
reader_layer: business
---

<section class="section business-catalog" data-business-tabs>
  <div class="wrap">
    <nav class="business-tabs" role="tablist" aria-label="Business blueprint areas" aria-orientation="vertical">
      <a class="business-tab" id="tab-overview" href="#overview" role="tab" aria-controls="overview" aria-selected="true">Overview</a>
      <a class="business-tab" id="tab-foundations" href="#foundations" role="tab" aria-controls="foundations" aria-selected="false">Foundations</a>
      <a class="business-tab" id="tab-personas" href="#personas" role="tab" aria-controls="personas" aria-selected="false">Personas</a>
      <a class="business-tab" id="tab-capabilities" href="#capabilities" role="tab" aria-controls="capabilities" aria-selected="false">Capabilities</a>
      <a class="business-tab" id="tab-solution-patterns" href="#solution-patterns" role="tab" aria-controls="solution-patterns" aria-selected="false">Solution Patterns</a>
      <a class="business-tab" id="tab-workloads" href="#workloads" role="tab" aria-controls="workloads" aria-selected="false">Workloads</a>
    </nav>

    <section class="business-tab-panel business-overview" id="overview" role="tabpanel" aria-labelledby="tab-overview" tabindex="0">
      <div class="section-head">
        <span class="eyebrow">Layer 1 · Business</span>
        <h1>Understand how the work operates.</h1>
        <p class="lede">
          The business blueprint defines the problem before the application: actors, outcomes,
          reusable capabilities, process, terminology, information, rules, variations, and mission
          constraints.
        </p>
      </div>
      {% assign foundation_count = site.foundations | size %}
      {% assign persona_count = site.personas | size %}
      {% assign capability_count = site.capabilities | size %}
      {% assign solution_count = site.solutions | size %}
      {% assign workload_count = site.workloads | size %}
      <div class="business-overview-grid">
        <a class="business-area-card" href="#foundations" data-business-tab-link>
          <span class="card-eyebrow">{{ foundation_count }} artifact{% unless foundation_count == 1 %}s{% endunless %}</span>
          <h3>Foundations</h3>
          <p>Shared concepts that remain true across solutions and industries.</p>
        </a>
        <a class="business-area-card" href="#personas" data-business-tab-link>
          <span class="card-eyebrow">{{ persona_count }} artifact{% unless persona_count == 1 %}s{% endunless %}</span>
          <h3>Personas</h3>
          <p>Reusable portraits of the people participating in the work.</p>
        </a>
        <a class="business-area-card" href="#capabilities" data-business-tab-link>
          <span class="card-eyebrow">{{ capability_count }} artifact{% unless capability_count == 1 %}s{% endunless %}</span>
          <h3>Capabilities</h3>
          <p>Business functions that can participate in many solutions.</p>
        </a>
        <a class="business-area-card" href="#solution-patterns" data-business-tab-link>
          <span class="card-eyebrow">{{ solution_count }} artifact{% unless solution_count == 1 %}s{% endunless %}</span>
          <h3>Solution Patterns</h3>
          <p>Composable combinations of capabilities for recognizable problems.</p>
        </a>
        <a class="business-area-card" href="#workloads" data-business-tab-link>
          <span class="card-eyebrow">{{ workload_count }} artifact{% unless workload_count == 1 %}s{% endunless %}</span>
          <h3>Workloads</h3>
          <p>Industry, mission, organizational, or policy-specific flavors.</p>
        </a>
      </div>
    </section>

    <section class="business-tab-panel" id="foundations" role="tabpanel" aria-labelledby="tab-foundations" tabindex="0">
      <div class="section-head">
        <span class="eyebrow">Shared vocabulary</span>
        <h2>Foundations</h2>
        <p class="lede">Durable business concepts defined once at the highest level where they remain generally true.</p>
      </div>
      <div class="card-grid">
        {% assign foundations = site.foundations | sort: "title" %}
        {% for entry in foundations %}{% include artifact-card.html entry=entry %}{% endfor %}
      </div>
    </section>

    <section class="business-tab-panel" id="personas" role="tabpanel" aria-labelledby="tab-personas" tabindex="0">
      <div class="section-head">
        <span class="eyebrow">People in context</span>
        <h2>Personas</h2>
        <p class="lede">Reusable role-based portraits of the people doing, receiving, coordinating, and overseeing the work.</p>
      </div>
      <div class="card-grid">
        {% assign personas = site.personas | sort: "title" %}
        {% for entry in personas %}{% include artifact-card.html entry=entry %}{% endfor %}
      </div>
    </section>

    <section class="business-tab-panel" id="capabilities" role="tabpanel" aria-labelledby="tab-capabilities" tabindex="0">
      <div class="section-head">
        <span class="eyebrow">Reusable business functions</span>
        <h2>Capabilities</h2>
        <p class="lede">What a public organization can do, grouped into nine areas spanning authority, service, resources, operations, resilience, and justice.</p>
      </div>
      <div class="card-grid">
        {% assign capability_areas = site.capability_areas | sort: "order" %}
        {% for entry in capability_areas %}{% include artifact-card.html entry=entry %}{% endfor %}
      </div>
    </section>

    <section class="business-tab-panel" id="solution-patterns" role="tabpanel" aria-labelledby="tab-solution-patterns" tabindex="0">
      <div class="section-head">
        <span class="eyebrow">Composable combinations</span>
        <h2>Solution Patterns</h2>
        <p class="lede">Recognizable business solutions assembled by mixing and matching reusable capabilities.</p>
      </div>
      <div class="card-grid">
        {% assign solutions = site.solutions | sort: "title" %}
        {% for entry in solutions %}{% include artifact-card.html entry=entry %}{% endfor %}
      </div>
    </section>

    <section class="business-tab-panel" id="workloads" role="tabpanel" aria-labelledby="tab-workloads" tabindex="0">
      <div class="section-head">
        <span class="eyebrow">Real-world specializations</span>
        <h2>Workloads</h2>
        <p class="lede">Industry, mission, organizational, or policy-specific flavors of one or more Solution Patterns.</p>
      </div>
      <div class="card-grid">
        {% assign workloads = site.workloads | sort: "title" %}
        {% for entry in workloads %}{% include artifact-card.html entry=entry %}{% endfor %}
      </div>
    </section>
  </div>
</section>

<script src="{{ '/assets/js/business-tabs.js' | relative_url }}" defer></script>
