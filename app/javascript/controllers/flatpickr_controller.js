import { Controller } from "@hotwired/stimulus"
// Connects to data-controller="flatpickr"
import flatpickr from "flatpickr"
import rangePlugin from "flatpickrRangePlugin";
export default class extends Controller {
  // retrieve the targets from the DOM
  static targets = [ 'startDateInput', 'endDateInput', 'price' ]
  static values = {
    price: Number
  }
  // On controller's connection, call the flatpickr
  // function in order to build the calendars
  connect() {
    flatpickr(this.startDateInputTarget, {
      onChange: (selectedDates) => {
        if (selectedDates.length === 2) {
          this.calculatedays()
        }
      },
      "plugins": [new rangePlugin({ input: this.endDateInputTarget })]
    })
  }

  calculatedays() {
    console.log ("hello")
    const date_begin = this.startDateInputTarget.value
    const date_end = this.endDateInputTarget.value
    console.log(date_begin)
    console.log(date_end)
    const date_begin_formated = new Date(date_begin)
    const date_end_formated = new Date(date_end)
    console.log(date_begin_formated)
    console.log(date_end_formated)
    var intervalle = date_end_formated.getTime() - date_begin_formated.getTime();
    intervalle = Math.floor(intervalle / (1000 * 60 * 60 * 24))
    console.log(intervalle)
    console.log(this.priceValue * (intervalle))
    console.log(this.priceTarget.innerHTML)
    this.priceTarget.innerHTML = `Montant TOTAL : ${this.priceValue * (intervalle)} €`
  }

  }
