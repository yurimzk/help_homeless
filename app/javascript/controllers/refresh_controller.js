import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["search"]

  toggle(){
    this.searchTarget.classList.toggle("d-none")
  }
}
