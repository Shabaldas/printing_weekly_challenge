import Carousel from "stimulus-carousel"

export default class extends Carousel {
  connect() {
    super.connect()
    this.swiper
    this.defaultOptions
  }

  get defaultOptions() {
    return {
      spaceBetween: 32,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
      }
    }
  }
}