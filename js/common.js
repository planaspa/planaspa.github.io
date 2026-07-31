(function () {
  'use strict';

  var headerOverlay = document.querySelector('.header__overlay');
  var menuOpenIcon = document.querySelector('.nav__icon-menu');
  var menuCloseIcon = document.querySelector('.nav-icon__close');
  var menuList = document.querySelector('.main-nav');
  var topButton = document.querySelector('.top');

  function menuOpen() {
    if (!menuList || !headerOverlay) {
      return;
    }

    menuList.classList.add('is-open');
    headerOverlay.classList.add('is-visible');
  }

  function menuClose() {
    if (!menuList || !headerOverlay) {
      return;
    }

    menuList.classList.remove('is-open');
    headerOverlay.classList.remove('is-visible');
  }

  if (menuOpenIcon) {
    menuOpenIcon.addEventListener('click', menuOpen);
  }

  if (menuCloseIcon) {
    menuCloseIcon.addEventListener('click', menuClose);
  }

  if (headerOverlay) {
    headerOverlay.addEventListener('click', menuClose);
  }

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
