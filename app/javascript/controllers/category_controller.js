import { Controller } from "stimulus"

export default class extends Controller {


  static targets = ["environmentDisplay", "environmentSelector"]

  // connect() {
  //   this.cat = JSON.parse(this.element.dataset.cat)
  // }
  setCategory(event) {

    const display = this.environmentDisplayTarget
    const checkedSelector = this.environmentSelectorTarget.parentNode.previousSibling.checked

    display.hidden = !checkedSelector

    console.log(this.environmentSelectorTarget)
    console.log(checkedSelector)
    console.log(display)
  }
}
