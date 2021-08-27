import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["firstNameInput", "firstName"]

  setFirstName(event) {
    // event.preventDefault()
    const firstName = this.firstNameInputTarget.value

    this.firstNameTargets.forEach(firstNameTarget => {
      firstNameTarget.innerHTML = firstName
    });
  }
}
