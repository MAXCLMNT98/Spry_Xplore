import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["togglableElement"]
  connect() {
  }

  fire() {
    this.togglableElementTarget.classList.toggle("d-none");

    // Accédez à l'instance de la carte et redimensionnez-la
    const mapController = this.application.getControllerForElementAndIdentifier(
      this.togglableElementTarget,
      "map"
    )
    if (mapController) {
      const mapInstance = mapController.getMapInstance()
      mapInstance.resize()
    }
  }
}
