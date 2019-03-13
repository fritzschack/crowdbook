const selectTwo = () => {
  $(function() {
    $('.js-new-performance-form').select2({
      tags: true,
      theme: "bootstrap",
      width: '100%',
      placeholder: 'Enter performances for your campaign',
    });
    $('.js-genre-selection-form').select2({
      theme: "bootstrap",
      placeholder: 'Select a genre for your campaign',
      width: '100%'
    });
    $('.js-genre-selection-search').select2({
      width: 200,
      theme: "bootstrap",
      placeholder: 'Search for a genre'
    });
    $('.js-selection-search-banner').select2({
      width: 200,
      theme: "bootstrap",
      placeholder: 'Search for a genre',
    });
  });
}


export { selectTwo }
