import Carousel from "stimulus-carousel"

export default class extends Carousel {
  connect() {
    super.connect()
    this.swiper
    this.defaultOptions
  }

  get defaultOptions() {
    return {
      slidesPerView: 3,
      spaceBetween: 32,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    }
  }
}