import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    userLocation: Object
  }

  static targets = ["showMap"]

  connect() {
    console.log(this.userLocationValue.marker_html)
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      center: [this.userLocationValue.lng, this.userLocationValue.lat], // starting position [lng, lat]
      zoom: 11,
    })
    this.#addMarkersToMap()
    this.#addUserMarkersToMap()
    // this.#fitMapToMarkers()

  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
      })
  }

  #addUserMarkersToMap() {

    const customMarker = document.createElement("div")
    customMarker.innerHTML = this.userLocationValue.marker_html
      new mapboxgl.Marker(customMarker)
        .setLngLat([ this.userLocationValue.lng, this.userLocationValue.lat ])
        .addTo(this.map)
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
