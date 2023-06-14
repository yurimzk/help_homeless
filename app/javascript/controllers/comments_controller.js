import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "commentary"]

  toggle(){
    this.formTarget.classList.toggle("d-none")
  }

  submitForm(event) {
    event.preventDefault();
    const formElement = event.currentTarget;
    const formData = new FormData(formElement);

    // Perform form submission using AJAX
    fetch(formElement.action, {
      method: formElement.method,
      body: formData
    })
      .then(response => response.text())
      .then(html => {
        // Update the commentary target with the response HTML
        this.commentaryTarget.innerHTML = html;
      })
      .catch(error => {
        console.error("Error:", error);
      });
  }

}
