// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

var toggle = function() {
  var mydiv = document.getElementById('sketch');
  var imgdiv = document.getElementsByClassName('images')[0];
  if (mydiv.style.display === 'block' || mydiv.style.display === '') {
    mydiv.style.display = 'none';
	imgdiv.style.margin = '84px 0px 0px 0px';}
  else {
    mydiv.style.display = 'block';
	imgdiv.style.margin = '428px 0px 0px 0px';}
}

