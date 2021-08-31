import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["next"]

  connect() {
    setTimeout(() => {
      this.nextTarget.click()
    }, 3000)
  }
}
