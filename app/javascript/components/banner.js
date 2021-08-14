import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('.banner-text', {
    strings: ['- Drama', '- Classic', '- Comedy', '- Action', '- Romantic', '- Thriller', '- Horror', '- Slasher'],
    typeSpeed: 70,
    loop: true,
    loopCount: Infinity,
    showCursor: false
  });
}

export { loadDynamicBannerText };
