import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "like"]
  static values = {
    post: Number
  }

  toggle(){
    this.formTarget.classList.toggle("d-none")
  }

  connect(){
    console.log(this.postValue)
  }

  refresh(event){
    event.preventDefault()
    const url = "http://localhost:3000/likes"
    fetch(url, {
      method: "POST",
      headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      console.log(event.currentTarget)
    })
  }

}
