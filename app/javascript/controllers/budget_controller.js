import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["input", "realCost"]

  setBudget(event) {
    const budget = Number.parseInt(event.target.dataset.budget)

    this.inputTarget.value = budget

    this.realCostTarget.innerHTML = `${(budget * 0.66).toFixed(2)}€`
  }
}
