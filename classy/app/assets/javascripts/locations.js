function fetchLocations(event){
  event.preventDefault()
  var locationId = $(event.target).data("location-id")
  var location_url = "/locations/" + locationId;
  $.ajax({
    url: location_url,
    type: "GET",
    dataType: "json"
  }).done(function(response){
    console.log('location',response)
    populateLocation(response)
  }).fail(function(){
    console.log("AJAX request Failed!")
  });
}

function populateLocation(location){
  fetchLocationRestaurants(location.id);
}


function fetchLocationRestaurants(locationId){
  var restaurants_url = "/locations/" + locationId + "/restaurants" ;
  $.ajax({
    url: restaurants_url,
    type: "GET",
    dataType: "json"
  }).done(function(response){
    console.log("restaurants", locationId, response)
    populateRestaurants(response)
  }).fail(function(){
    console.log("AJAX request Failed!")
  });
}

function populateRestaurants(restaurants){
  var restaurantsTag = $('#restaurants');
  var restaurantsImage = $('#restaurants');
  restaurantsTag.empty();
  for(var i = 0; i < restaurants.length; i++){
    restaurantsTag.append("<li>" + restaurants[i].name + "</li>");
    restaurantsImage.append("<li><img src=" + restaurants[i].image_url + "></li>");

  }
}
