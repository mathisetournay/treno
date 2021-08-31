import { Controller } from "stimulus"


function loadCategories() {
  const categoriesElement = parseCategoriesElement()

  return categoriesElement.map(category => {
    return [`${category}Display`, `${category}Selector`];
  }).flat()
}

function parseCategoriesElement () {
  console.log(parseCategoriesElement)
  const categoriesElement = document.getElementById('onboardingForm');

  // if (categoriesElement) {
    return JSON.parse(categoriesElement.dataset.categories);
  // }
  // return []
}

export default class extends Controller {

  static targets = loadCategories();

  setCategory(event) {
    console.log(event)
    parseCategoriesElement().forEach( cat => {
      const display = this[`${cat}DisplayTarget`]
      const selector = this[`${cat}SelectorTarget`]
      const checkedSelector = selector.parentNode.previousSibling.checked

      return display.hidden = !checkedSelector
    })
  };
}
