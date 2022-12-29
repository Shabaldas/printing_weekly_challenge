import Carousel from "stimulus-carousel"
export default class extends Carousel {
  connect() {
    super.connect()
    console.log("Carousel here")
    this.swiper
    this.defaultOptions
  }

  get defaultOptions() {
    return {
    }
  }
}