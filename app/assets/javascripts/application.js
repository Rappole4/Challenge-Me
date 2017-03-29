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
//= require_tree .
//= require 'rest_in_place'

// Variables ######################################################################################
var map, marker;
// FUNCTIONS ######################################################################################
// 
// 
// Initiating the map
function initMap() {
	if (document.getElementById('map')) { 
		map = new google.maps.Map(document.getElementById('map'),{
			center: {lat: 38.397, lng: -90},
          	zoom: 4
		});	
	};
	var rightclick = google.maps.event.addListener(map, "rightclick", function(event) {
   		console.log("rightclick")
    	var lat = event.latLng.lat();
    	var lng = event.latLng.lng();
    	var marker = new google.maps.Marker({
       		position: event.latLng,
       		map: map,
   		});
	});
}
document.addEventListener("DOMContentLoaded",function(){
	if (document.getElementById('map')) { 
		initMap();
	}
});
