import { Controller } from "stimulus"


function loadCategories() {
  const categoriesElement = parseCategoriesElement()

  return categoriesElement.map(category => {
    return [`${category}Display`, `${category}Selector`];
  }).flat()
}

function parseCategoriesElement () {
  const categoriesElement = document.getElementById('onboardingForm');
  const nonProfits = document.getElementById('non_profits');

  if (nonProfits) {
      return []
  } else {
    return JSON.parse(categoriesElement.dataset.categories);
  }
}

export default class extends Controller {

  static targets = loadCategories();

  setCategory(event) {
    parseCategoriesElement().forEach( cat => {
      const display = this[`${cat}DisplayTarget`]
      const selector = this[`${cat}SelectorTarget`]
      const checkedSelector = selector.parentNode.previousSibling.checked

      return display.hidden = !checkedSelector
    })
  };
}
