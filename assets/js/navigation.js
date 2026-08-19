const toggle = document.querySelector('.nav-toggle');
const navigation = document.querySelector('.site-nav');

if (toggle && navigation) {
  toggle.addEventListener('click', () => {
    const open = toggle.getAttribute('aria-expanded') === 'true';
    toggle.setAttribute('aria-expanded', String(!open));
    navigation.classList.toggle('is-open', !open);
  });
}

const articleHeader = document.querySelector('.page-hero--article');
const siteHeader = document.querySelector('.site-header');
let stickyUpdateQueued = false;

const updateStickyHeaders = () => {
  if (articleHeader && siteHeader) {
    const heroHasPassed = articleHeader.getBoundingClientRect().bottom <= siteHeader.offsetHeight;
    document.body.classList.toggle('has-scrolled', heroHasPassed);
  } else {
    document.body.classList.remove('has-scrolled');
  }
  stickyUpdateQueued = false;
};

const queueStickyHeaderUpdate = () => {
  if (!stickyUpdateQueued) {
    stickyUpdateQueued = true;
    window.requestAnimationFrame(updateStickyHeaders);
  }
};

updateStickyHeaders();
window.addEventListener('scroll', queueStickyHeaderUpdate, { passive: true });
window.addEventListener('resize', queueStickyHeaderUpdate);
