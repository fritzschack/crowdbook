const initUpdateSearchbarOnScroll = () => {
  const searchbar = document.querySelector('.searchbar');
  if (searchbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY > 0) {
        searchbar.classList.add('searchbar-sticky');
      } else {
        searchbar.classList.remove('searchbar-sticky');
      }
    });
  }
}

export { initUpdateSearchbarOnScroll };
