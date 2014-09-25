

var map;
function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(25.021004,121.526988),
    zoom: 17
    
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);


  var marker = new google.maps.Marker({
    position: map.getCenter(),
    map: map,
    title: 'Click to zoom'
  });


}


 //google.maps.event.addDomListener(window, 'load', initialize);



/*
function initialize() {
  var mapOptions = {
    zoom: 17,
    center: new google.maps.LatLng(25.021004,121.526988)



  };

  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

   var marker = new google.maps.Marker({
    position: map.getCenter(),
    map: map,
    title: 'Click to zoom'
  });
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' +
      'callback=initialize';
  document.body.appendChild(script);
}

*/
;
