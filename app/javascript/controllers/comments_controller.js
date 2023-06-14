import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "commentary"]

  toggle(){
    this.formTarget.classList.toggle("d-none")
  }

  submitForm(event) {
    event.preventDefault();
    fetch(this.commentaryTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.commentaryTarget)
    })
    .then(response => response.json())
    .then((data) => {
      if (data.inserted_item) {
        this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
      }
      this.formTarget.outerHTML = data.form
    })
  }

}
