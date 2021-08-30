import { Controller } from "stimulus"


function loadCategories() {
  const categoriesElement = parseCategoriesElement()

  if (categoriesElement) {
    return categoriesElement.map(category => {
      return [`${category}Display`, `${category}Selector`];
    }).flat()
  }
}

function parseCategoriesElement () {
  return JSON.parse(document.getElementById('onboardingForm').dataset.categories);
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
