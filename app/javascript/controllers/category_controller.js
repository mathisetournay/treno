import { Controller } from "stimulus"


function parseCategoriesElement () {
  const categoriesElement = document.getElementById('onboardingForm');
  const nonProfits        = document.getElementById('non_profits');

  if (nonProfits) {
    return []
  } else if (categoriesElement) {
    return JSON.parse(categoriesElement.dataset.categories);
  }
}

export default class extends Controller {

  static targets = []

  setCategory(event) {
    parseCategoriesElement().forEach(cat => {
      const display = this[`${cat}DisplayTarget`] || document.querySelector(`[data-category-target="${cat}Display"]`);
      const selector = this[`${cat}SelectorTarget`] || document.querySelector(`[data-category-target="${cat}Selector"]`);
      const checkedSelector = selector.parentNode.previousSibling.checked

      const label = this[`${cat}LabelTarget`] || document.querySelector(`[data-category-target="${cat}Label"]`);
      label.hidden = !checkedSelector
      return display.hidden = !checkedSelector
    })
  };
}
