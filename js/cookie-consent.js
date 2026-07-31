(function () {
  'use strict';

  var STORAGE_KEY = 'cookie_consent';
  var body = document.body;
  var measurementId = body && body.getAttribute('data-ga-id');

  if (!measurementId) {
    return;
  }

  function getConsent() {
    try {
      return localStorage.getItem(STORAGE_KEY);
    } catch (error) {
      return null;
    }
  }

  function setConsent(value) {
    try {
      localStorage.setItem(STORAGE_KEY, value);
    } catch (error) {
      // Storage may be unavailable in private browsing.
    }
  }

  function grantAnalyticsConsent() {
    if (typeof gtag !== 'function') {
      return;
    }

    gtag('consent', 'update', {
      'analytics_storage': 'granted',
      'ad_storage': 'denied',
      'ad_user_data': 'denied',
      'ad_personalization': 'denied'
    });
  }

  function loadGoogleAnalytics() {
    if (window.__gaLoaded) {
      return;
    }

    window.__gaLoaded = true;

    var script = document.createElement('script');
    script.async = true;
    script.src = 'https://www.googletagmanager.com/gtag/js?id=' + measurementId;
    script.onload = function () {
      gtag('js', new Date());
      gtag('config', measurementId);
    };
    document.head.appendChild(script);
  }

  function hideBanner() {
    var banner = document.getElementById('cookie-consent');

    if (banner) {
      banner.hidden = true;
    }
  }

  function showBanner() {
    var banner = document.getElementById('cookie-consent');

    if (banner) {
      banner.hidden = false;
    }
  }

  function accept() {
    setConsent('granted');
    grantAnalyticsConsent();
    loadGoogleAnalytics();
    hideBanner();
  }

  function reject() {
    setConsent('denied');
    hideBanner();
  }

  function init() {
    var acceptButton = document.getElementById('cookie-consent-accept');
    var rejectButton = document.getElementById('cookie-consent-reject');
    var consent = getConsent();

    if (acceptButton) {
      acceptButton.addEventListener('click', accept);
    }

    if (rejectButton) {
      rejectButton.addEventListener('click', reject);
    }

    if (consent === 'granted') {
      grantAnalyticsConsent();
      loadGoogleAnalytics();
      hideBanner();
      return;
    }

    if (consent === 'denied') {
      hideBanner();
      return;
    }

    showBanner();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
