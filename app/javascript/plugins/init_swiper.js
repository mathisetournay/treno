import Swiper from 'swiper';
import 'swiper/swiper-bundle.css';

const initSwiper = () => {
  new Swiper('.swiper-sub', {
    slidesPerView: 3,
    spaceBetween: 30,

    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
  });
};

export { initSwiper };
