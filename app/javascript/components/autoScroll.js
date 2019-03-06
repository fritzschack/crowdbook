const autoScrollHome = () => {
  $(document).ready(function() {
    $('#down-arrows').click(function(e) {
      e.preventDefault();

      $('html, body').animate({
        scrollTop: $('#about-cards').offset().top
      }, 500);
    });
  });
};

export { autoScrollHome };

