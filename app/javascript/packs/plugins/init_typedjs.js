import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    new Typed('.typed-js', {
      strings: ['Welcome To Jpay. Explore, Upload and Rent Jpegs.'],
      typeSpeed: 100,
      loop: true,
      loopCount: 1,
      showCursor: false
    });
  }
};

export { initTyped };
