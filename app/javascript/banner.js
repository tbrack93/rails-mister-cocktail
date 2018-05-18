// app/javascript/components/banner.js
import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Drink some weird stuff", "Get shitfaced"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };