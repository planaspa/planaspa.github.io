(function () {
  'use strict';

  var topButton = document.querySelector('.top');

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

  document.querySelectorAll('[data-share-copy]').forEach(function (button) {
    button.addEventListener('click', function () {
      var url = button.getAttribute('data-share-copy');
      var defaultLabel = button.getAttribute('aria-label');
      var copiedLabel = button.getAttribute('data-share-copy-success');

      if (!url || !navigator.clipboard) {
        return;
      }

      navigator.clipboard.writeText(url).then(function () {
        button.classList.add('is-copied');
        if (copiedLabel) {
          button.setAttribute('aria-label', copiedLabel);
        }

        window.setTimeout(function () {
          button.classList.remove('is-copied');
          if (defaultLabel) {
            button.setAttribute('aria-label', defaultLabel);
          }
        }, 2000);
      });
    });
  });
})();
