import { Controller } from "stimulus"



export default class extends Controller {

  static targets = ["selector", "total"];
  connect() {
    console.log('salut')

    // console.log(this.selectorTargets);
    console.log(this.totalTarget)
  };


  count(event) {

    var count = 0;

    this.selectorTargets.forEach(target => {
      if (target.value) {
        count += parseInt(target.value)
      }
      return count
    })

    this.totalTarget.innerHTML = `${count} €`

    // const selectorCounted = this.selectorTargets
    // console.log(this.selectorTargets)
    // console.log(selectorCounted)
    // selectorCounted.forEach((v) => (v === true && count++));
    // console.log(v)
    // const total = count
    // console.log(total)
  }

}
