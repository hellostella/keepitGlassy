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
 htnl5 history API

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
  // var restaurantsUrl = "/restaurants/" + restaurants[i].id
  restaurantsTag.empty();
  for(var i = 0; i < restaurants.length; i++){
    restaurantsTag.append("<li id= rest><a href=" + "/restaurants/" + restaurants[i].id + ">"  + restaurants[i].name + "</a></li><br>");
    // restaurantsTag.append("<li><a href=" + "/restaurants/" + restaurants[i].id + ">" + "</a></li>")
    restaurantsImage.append("<li><img src=" + restaurants[i].image_url + "></li><br>");
    // linkRestaurant(restaurants)
  }
}



function linkRestaurant(restaurants){
  var restaurantsTag = $('#restaurants');
  var restaurantsUrl = "/restaurants/" + restaurants[i].id;
    $.ajax({
      url: restaurantsUrl,
      type: "GET",
      dataType: "json"
    }).done(function(response){
  restaurantsTag.append("<li><a href=" + "/restaurants/" + restaurants[i].id + ">"  + restaurants[i].name + "</a></li><br>");
      populateRestaurants(response)
    }).fail(function(){
      console.log("AJAX request Failed!")
    });
  }
