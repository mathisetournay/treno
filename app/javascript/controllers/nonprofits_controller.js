import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["selector", "total", "donationBanner"]

  count(event) {

     const selectorCounted = this.selectorTargets.map(selectorTarget => {
      return selectorTarget.checked
    });

    var count = 0;
    selectorCounted.forEach((v) => (v === true && count++));

    const total = count
    this.totalTarget.value = `Donate (${total})`

    console.log(this.donationBannerTarget)

    if (total === 0) {
      this.donationBannerTarget.hidden = true
    } else {
      this.donationBannerTarget.hidden = false
    }
  }

}
