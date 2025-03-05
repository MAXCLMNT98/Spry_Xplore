import { Controller } from "@hotwired/stimulus"
// Connects to data-controller="flatpickr"
import flatpickr from "flatpickr"
import rangePlugin from "flatpickrRangePlugin";
export default class extends Controller {
  // retrieve the targets from the DOM
  static targets = [ 'startDateInput', 'endDateInput' ]
  // On controller's connection, call the flatpickr
  // function in order to build the calendars
  connect() {
  flatpickr(this.startDateInputTarget, {
  "plugins": [new rangePlugin({ input: this.endDateInputTarget})]
  })
  }
  }