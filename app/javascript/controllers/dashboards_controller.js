import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["firstlogo", "secondlogo"]

  const menu = document.querySelector(`#menu`);

  // set each style property separately
  menu.style.borderRadius = '4em';

  menu.style.border = '1px solid red';
// menu.style.border, equals to

  /*
  menu.style.borderWidth = '1px';
  menu.style.borderStyle = 'solid';
  menu.style.borderColor = 'red';
  
  */const menu = document.querySelector(`#menu`);

  // set each style property separately
  menu.style.borderRadius = '4em';

  menu.style.border = '1px solid red';
// menu.style.border, equals to

  /*
  menu.style.borderWidth = '1px';
  menu.style.borderStyle = 'solid';
  menu.style.borderColor = 'red';
  
  */

  setFirstName(event) {
    // event.preventDefault()
    const firstlogo = this.firstLogoTarget

  }
}
