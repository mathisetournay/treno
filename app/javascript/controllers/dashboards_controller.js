import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["firstlogo", "secondlogo"]

  setFirstName(event) {
    // event.preventDefault()
    const firstlogo = this.firstLogoTarget

  }
}
