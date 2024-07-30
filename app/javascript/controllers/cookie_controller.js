import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["cookie"];

  connect() {
    console.log("Cookie controller connected.");
    // Add your logic here
  }
}
