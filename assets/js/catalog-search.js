// Filters the cards a listing page has already rendered. Each catalog page opts in with
// [data-catalog-search] on its form; the cards carry their own searchable text in data-search.
const catalogSearchForms = document.querySelectorAll('[data-catalog-search]');

catalogSearchForms.forEach((searchForm) => {
  const listing = searchForm.closest('.listing');
  if (!listing) { return; }

  const input = searchForm.querySelector('input[type="search"]');
  const clearButton = searchForm.querySelector('.catalog-search-clear');
  const status = searchForm.querySelector('.catalog-search-status');
  const emptyState = listing.querySelector('.catalog-search-empty');
  const emptyTerm = listing.querySelector('.catalog-search-term');
  const groups = Array.from(listing.querySelectorAll('.listing-group'));
  const cards = Array.from(listing.querySelectorAll('.card[data-search]'));
  const total = cards.length;
  const noun = searchForm.dataset.noun || 'results';
  const param = searchForm.dataset.param || 'q';

  if (!input || total === 0) { return; }

  // The form is authored hidden so the full catalog still reads correctly without JS.
  searchForm.hidden = false;

  // Content states most nouns in the singular ("Election Operations", "Fleet Management"),
  // so a plural query would otherwise miss: substring matching only covers the case where
  // the query is shorter than the text. Reducing the query to its stem covers the reverse.
  const singularize = (term) => {
    if (term.length < 4) { return term; }
    if (/ies$/.test(term)) { return term.slice(0, -3) + 'y'; }
    if (/(sses|ses|xes|ches|shes)$/.test(term)) { return term.slice(0, -2); }
    if (/[^sui]s$/.test(term)) { return term.slice(0, -1); }
    return term;
  };

  const termsFrom = (value) => value
    .toLowerCase()
    .split(/\s+/)
    .filter(Boolean)
    .map((term) => ({ term: term, stem: singularize(term) }));

  const applyQuery = (query) => {
    const terms = termsFrom(query);
    const trimmed = query.trim();
    let matches = 0;

    cards.forEach((card) => {
      // data-search is emitted pre-lowercased by the page that rendered the card.
      const haystack = card.dataset.search;
      const isMatch = terms.every((entry) => haystack.includes(entry.term) || haystack.includes(entry.stem));
      card.hidden = !isMatch;
      if (isMatch) { matches += 1; }
    });

    let firstVisibleGroup = true;
    groups.forEach((group) => {
      const hasMatch = group.querySelector('.card[data-search]:not([hidden])') !== null;
      group.hidden = !hasMatch;
      group.classList.toggle('is-first-visible', hasMatch && firstVisibleGroup);
      if (hasMatch) { firstVisibleGroup = false; }
    });

    clearButton.hidden = terms.length === 0;
    if (emptyState) { emptyState.hidden = terms.length === 0 || matches > 0; }
    if (emptyTerm) { emptyTerm.textContent = trimmed; }
    status.textContent = terms.length === 0
      ? ''
      : `Showing ${matches} of ${total} ${noun} for “${trimmed}”.`;
  };

  const syncUrl = (query) => {
    const url = new URL(window.location.href);
    if (query.trim()) {
      url.searchParams.set(param, query.trim());
    } else {
      url.searchParams.delete(param);
    }
    window.history.replaceState({}, '', url);
  };

  searchForm.addEventListener('submit', (event) => {
    event.preventDefault();
  });

  input.addEventListener('input', () => {
    applyQuery(input.value);
    syncUrl(input.value);
  });

  input.addEventListener('keydown', (event) => {
    if (event.key === 'Escape' && input.value) {
      event.preventDefault();
      input.value = '';
      applyQuery('');
      syncUrl('');
    }
  });

  clearButton.addEventListener('click', () => {
    input.value = '';
    applyQuery('');
    syncUrl('');
    input.focus();
  });

  const initialQuery = new URLSearchParams(window.location.search).get(param);
  if (initialQuery) {
    input.value = initialQuery;
    applyQuery(initialQuery);
  }
});
