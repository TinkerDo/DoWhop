// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var y = document.getElementsByClassName("small-slide");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
     y[i].style.opacity = "0.75";
  }
  x[slideIndex-1].style.display = "block";
  y[slideIndex-1].style.opacity = "1";

  // carousel(slideIndex-1);
}

// function carousel(index) {
//     var i;
//     var x = document.getElementsByClassName("mySlides");
//     for (i = 0; i < x.length; i++) {
//       x[i].style.display = "none";
//     }
//     index++;
//     if (index > x.length) {index = 1}
//     x[index-1].style.display = "block";
//     setTimeout(carousel, 2000); // Change image every 2 seconds
// }
