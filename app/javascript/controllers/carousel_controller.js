import { Application } from "@hotwired/stimulus"
import Carousel from "stimulus-carousel"

export default class extends Carousel {
  connect() {
    console.log('123')
    super.connect()
    this.swiper
    this.defaultOptions
  }
  get defaultOptions() {
    return {
      clickable: true,
    }
  }
}