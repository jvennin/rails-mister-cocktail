import Typed from 'typed.js';

  const loadDynamicBannerText = () => {
    new Typed('#banner-typed-text', {
      strings: ["changes your life", "learns to drink", "brings cocktail skills", "gives awesomes recipes"],
      typeSpeed: 60,
      loop: true
    });
  }

export { loadDynamicBannerText };

