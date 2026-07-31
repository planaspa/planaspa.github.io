(function () {
  'use strict';

  var topButton = document.querySelector('.top');

  document.querySelectorAll('.page img, .post img').forEach(function (image) {
    var parentLink = image.closest('a');

    if (!parentLink) {
      image.setAttribute('data-action', 'zoom');
    }
  });

  if (topButton) {
    topButton.addEventListener('click', function () {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    });

    window.addEventListener('scroll', function () {
      if (window.scrollY > window.innerHeight) {
        topButton.classList.add('is-active');
      } else {
        topButton.classList.remove('is-active');
      }
    });
  }
})();
