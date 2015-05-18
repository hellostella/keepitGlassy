// function fetchRestaurants(event){
//   event.preventDefault()
//   var locationId = $(event.target).data("restaurant-id")
//   var location_url = "/restaurant/" + restaurantId;
//   $.ajax({
//     url: location_url,
//     type: "GET",
//     dataType: "json"
//   }).done(function(response){
//     console.log('location',response)
//     populateLocation(response)
//   }).fail(function(){
//     console.log("AJAX request Failed!")
//   });
// }
//
// function populateRestaurantMenu(restaurant){
//   fetchRestaurantMenu(restaurant.id);
// }
//
//
// function fetchRestaurantMenus(locationId){
//   var restaurants_url = "/locations/restaurant" + restaurantId + "/menus" ;
//   $.ajax({
//     url: restaurants_url,
//     type: "GET",
//     dataType: "json"
//   }).done(function(response){
//     console.log("menu", restaurantId, response)
//     populateRestaurantMenus(response)
//   }).fail(function(){
//     console.log("AJAX request Failed!")
//   });
// }
//
// function populateRestaurantMenus(menu){
//   var menuDrinkTag = $('#menu');
//   var menuDrinkPrice = $('#menu');
//   var restaurantsUrl = "/restaurant/" + restaurant.id
//   restaurantsTag.empty();
//   for(var i = 0; i < menu.length; i++){
//     menuDrinkTag.append("<li>" + menu[i].drink_name + "</li>");
//
//     menuDrinkPrice.append("<li><img src=" + menu[i].price + "></li><br>");
//
//   }
