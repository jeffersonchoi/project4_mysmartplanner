// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require datetimepicker
//= require jquery_ujs
//= require turbolinks
//= require_tree .

google.maps.event.addDomListener(window, 'load', initialize);
google.maps.event.addDomListener(window, 'page:load', initialize);
function initialize() {
  var url = window.location.origin + window.location.pathname + ".json"
  $.get(url, function(results){

    var bounds = new google.maps.LatLngBounds()

    var infowindow = new google.maps.InfoWindow();


    var mapProperties = {
    // center:new google.maps.LatLng(34.0129821,-118.495196),
    zoom: 5,
    mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    var markers = []



    var map=new google.maps.Map(document.getElementById("googleMap"), mapProperties);
    for (i = 0; i < results.length; i+=1){
        var markerPosition = new google.maps.LatLng(results[i]["lat"], results[i]["long"])
        var marker=new google.maps.Marker({
            position:markerPosition,
            animation:google.maps.Animation.BOUNCE //animates the marker
        });
        bounds.extend(markerPosition);
        map.fitBounds(bounds);
        markers.push(marker);

        google.maps.event.addListener(marker, 'mouseover', function(marker, i) {
            return function () {
              var content = results[i].node_name;
              infowindow.setContent(content);
              infowindow.open(map, marker);
                  };
                }(marker,i));
        marker.setMap(map);
      }
  })
};
