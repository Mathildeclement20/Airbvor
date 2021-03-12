

const updateSearchbarOnScroll = () => {
  const searchBar = document.querySelector('.search-home');
  if (searchBar) {
    window.addEventListener("scroll", (e) => {
      if (window.scrollY >= window.innerHeight) {
        searchBar.classList.add('search-bar-hidden');
      } else {
        searchBar.classList.remove('search-bar-hidden');
      }
    });
    
  }
};

export { updateSearchbarOnScroll }