(() => {
  const catalog = document.querySelector("[data-business-tabs]");
  if (!catalog) return;

  const tabs = Array.from(catalog.querySelectorAll('[role="tab"]'));
  const tablist = catalog.querySelector('[role="tablist"]');
  const panels = tabs
    .map((tab) => document.getElementById(tab.getAttribute("aria-controls")))
    .filter(Boolean);

  const tabForHash = () => {
    const id = window.location.hash.slice(1);
    return tabs.find((tab) => tab.getAttribute("aria-controls") === id);
  };

  const activate = (selectedTab, updateUrl = false) => {
    tabs.forEach((tab) => {
      const selected = tab === selectedTab;
      tab.setAttribute("aria-selected", selected ? "true" : "false");
      tab.tabIndex = selected ? 0 : -1;
    });

    panels.forEach((panel) => {
      panel.hidden = panel.id !== selectedTab.getAttribute("aria-controls");
    });

    if (updateUrl && window.history?.replaceState) {
      window.history.replaceState(null, "", selectedTab.getAttribute("href"));
    }
  };

  catalog.classList.add("is-enhanced");
  activate(tabForHash() || tabs[0]);

  const narrowLayout = window.matchMedia("(max-width: 760px)");
  const syncOrientation = () => {
    tablist.setAttribute("aria-orientation", narrowLayout.matches ? "horizontal" : "vertical");
  };
  syncOrientation();
  narrowLayout.addEventListener?.("change", syncOrientation);

  tabs.forEach((tab, index) => {
    tab.addEventListener("click", (event) => {
      event.preventDefault();
      activate(tab, true);
    });

    tab.addEventListener("keydown", (event) => {
      let nextIndex;
      if (event.key === "ArrowRight" || event.key === "ArrowDown") nextIndex = (index + 1) % tabs.length;
      if (event.key === "ArrowLeft" || event.key === "ArrowUp") nextIndex = (index - 1 + tabs.length) % tabs.length;
      if (event.key === "Home") nextIndex = 0;
      if (event.key === "End") nextIndex = tabs.length - 1;
      if (nextIndex === undefined) return;

      event.preventDefault();
      tabs[nextIndex].focus();
      activate(tabs[nextIndex], true);
    });
  });

  catalog.querySelectorAll("[data-business-tab-link]").forEach((link) => {
    link.addEventListener("click", (event) => {
      const id = link.getAttribute("href").slice(1);
      const linkedTab = tabs.find((tab) => tab.getAttribute("aria-controls") === id);
      if (!linkedTab) return;

      event.preventDefault();
      activate(linkedTab, true);
      document.getElementById(id)?.focus({ preventScroll: true });
    });
  });

  window.addEventListener("hashchange", () => {
    const linkedTab = tabForHash();
    if (linkedTab) activate(linkedTab);
  });
})();
