// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
console.log('bookmark');

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
import "bootstrap";
require("jquery");
// require("materialize-sprockets");
import "materialize-css/dist/js/materialize";
import $ from "jquery";
//= require jquery
//= require materialize-sprockets
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)



document.addEventListener("DOMContentLoaded", function () {
  const elems = document.querySelectorAll(".autocomplete");
  const instances = M.Autocomplete.init(elems, options);
});
$(document).ready(function () {
  $("select").formSelect();
});
console.log("bookmark");

