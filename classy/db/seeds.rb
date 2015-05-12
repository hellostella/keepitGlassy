# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Location.destroy_all
Restaurant.destroy_all
Menu.destroy_all

arlington = Location.create!([{city: 'Arlington', state: 'Virginia',}])
alexandira = Location.create!([{city: 'Alexandria', state: 'Virginia',}])
washington_dc = Location.create!([{city: 'Washington, D.C', state: 'District of Columbia',}])



arlington_restaurants = Location.find_by(city: 'Arlington').restaurants.create!([
  {name: "Rustico", image_url: "http://uplup.com/music_spot/mcnellies-pub-tulsa/additional_images/5edff8c0ca5719b27ecee8eabbde6856.jpeg", wait_time: 20 },
  {name:"Kapnos Taverna", image_url:"https://cdn3.vox-cdn.com/thumbor/UE6m9Qvilq_u0nTn4KC9eJECQIk=/898x600/cdn0.vox-cdn.com/uploads/chorus_asset/file/3340782/kapnos3.0.jpg", wait_time: 60 },
  {name:"Pepita Cantina", image_url:"http://www.kingdommagictravel.com/wp-content/uploads/2013/12/cava-del-tequila-00.jpg", wait_time: 50 },
  {name:"Water & Wall", image_url:"http://images3.alphacoders.com/115/115869.jpg", wait_time: 120 },
  {name:"Mussel Bar", image_url:"http://s3-media4.fl.yelpcdn.com/bphoto/f8qt3qvvp1Uo0Sgdpx9Q9w/o.jpg", wait_time: 80 }
  ])

  alexandria_restaurants = Location.find_by(city: 'Alexandria').restaurants.create!([
    {name: "Hank's Oyster Bar", image_url: "http://nolapage.com/wp-content/uploads/2013/06/surpieriorseafoodneworleans.jpg", wait_time: 120},
    {name: "Brabo", image_url: "http://www.thecribline.com/wp-content/uploads/2014/09/Hanks-Oyster-Bar-Capitol-Hill-2-of-101.jpg", wait_time: 60},
    {name: "Murphy's", image_url: "http://media-cdn.tripadvisor.com/media/photo-s/02/9d/d7/6b/paddy-s-irish-pub.jpg", wait_time: 40},
    {name: "Clyde's", image_url: "http://www.vehiclehi.com/thumbnails/detail/20121027/indoors%20bottles%20bar%20drinks%20pub%202560x1600%20wallpaper_www.vehiclehi.com_63.jpg", wait_time: 80},
    {name: "Daniel O'Connells", image_url: "http://media-cdn.tripadvisor.com/media/photo-s/03/3d/38/42/rose-crown-pub-and-dining.jpg", wait_time: "90"}
    ])
    washington_restaurants = Location.find_by(city: "Washington, D.C").restaurants.create!([
      {name: "Biergarten Haus", image_url: "http://www.washingtonian.com/blogs/bestbites/assets_c/2014/07/2014-7-24-saufhaus-thumb-995xauto-74434.jpg", wait_time: 80},
      {name: "Old Ebbit Grill", image_url: "http://www.urbanfoodlife.com/wp-content/uploads/2013/11/grants_bar-ebbit-grill.jpg", wait_time: 100},
      {name: "Bourbon", image_url: "http://dc.thedrinknation.com/uploads/bourbon-full.jpg", wait_time: 80},
      {name: "Pearl Dive", image_url: "http://ghostsofdc.wpengine.netdna-cdn.com/wp-content/uploads/2012/04/6902876528_731c5327f1_z.jpg", wait_time: 120},
      {name: "Statellite Room", image_url: "http://assets3.thrillist.com/v1/image/1131857/size/tl-horizontal_main/the-coolest-bars-and-restaurants-in-town", wait_time: 40}
      ])

      rustico_menu = Restaurant.find_by(name: "Rustico").menus.create!([
        {drink_name: "Double Jack", price: 8 },
        {drink_name: "Dirt Wolf", price: 7 },
        {drink_name: "Black Betty", price: 9 },
        {drink_name: "Edmund Fitzgerald", price: 10 },
        {drink_name: "Aventus", price: 12 },
        {drink_name: "Smoke Signals", price: 10 },
        {drink_name: "Missing Goose", price: 12 }
        ])
        kapnos_menu = Restaurant.find_by(name:"Kapnos Taverna").menus.create!([
          {drink_name: "Don't Worry 'Bout It", price: 12 },
          {drink_name: "Piece O' Work", price: 12 },
          {drink_name: "Gracias Amigo", price: 12 },
          {drink_name: "Cheapskates", price: 10 },
          {drink_name: "The Shepherd", price: 12 },
          {drink_name: "Lucky Charms", price: 12 },
          {drink_name: "Razor Mule", price: 10 }
          ])
          pepita_menu = Restaurant.find_by(name: "Pepita Cantina").menus.create!([
            {drink_name: "Double Jack", price: 8 },
            {drink_name: "Dirt Wolf", price: 7 },
            {drink_name: "Black Betty", price: 9 },
            {drink_name: "Edmund Fitzgerald", price: 10 },
            {drink_name: "Aventus", price: 12 },
            {drink_name: "Smoke Signals", price: 10 },
            {drink_name: "Missing Goose", price: 12 }
            ])
            waterwall_menu = Restaurant.find_by(name:"Water & Wall").menus.create!([
              {drink_name: "Don't Worry 'Bout It", price: 12 },
              {drink_name: "Piece O' Work", price: 12 },
              {drink_name: "Gracias Amigo", price: 12 },
              {drink_name: "Cheapskates", price: 10 },
              {drink_name: "The Shepherd", price: 12 },
              {drink_name: "Lucky Charms", price: 12 },
              {drink_name: "Razor Mule", price: 10 }
              ])
              musselbar_menu = Restaurant.find_by(name: "Mussel Bar").menus.create!([
                {drink_name: "Double Jack", price: 8 },
                {drink_name: "Dirt Wolf", price: 7 },
                {drink_name: "Black Betty", price: 9 },
                {drink_name: "Edmund Fitzgerald", price: 10 },
                {drink_name: "Aventus", price: 12 },
                {drink_name: "Smoke Signals", price: 10 },
                {drink_name: "Missing Goose", price: 12 }
                ])
                hanks_menu = Restaurant.find_by(name:"Hank's Oyster Bar").menus.create!([
                  {drink_name: "Don't Worry 'Bout It", price: 12 },
                  {drink_name: "Piece O' Work", price: 12 },
                  {drink_name: "Gracias Amigo", price: 12 },
                  {drink_name: "Cheapskates", price: 10 },
                  {drink_name: "The Shepherd", price: 12 },
                  {drink_name: "Lucky Charms", price: 12 },
                  {drink_name: "Razor Mule", price: 10 }
                  ])
                  brabo_menu = Restaurant.find_by(name: "Brabo").menus.create!([
                    {drink_name: "Double Jack", price: 8 },
                    {drink_name: "Dirt Wolf", price: 7 },
                    {drink_name: "Black Betty", price: 9 },
                    {drink_name: "Edmund Fitzgerald", price: 10 },
                    {drink_name: "Aventus", price: 12 },
                    {drink_name: "Smoke Signals", price: 10 },
                    {drink_name: "Missing Goose", price: 12 }
                    ])
                    murphys_menu = Restaurant.find_by(name:"Murphy's").menus.create!([
                      {drink_name: "Don't Worry 'Bout It", price: 12 },
                      {drink_name: "Piece O' Work", price: 12 },
                      {drink_name: "Gracias Amigo", price: 12 },
                      {drink_name: "Cheapskates", price: 10 },
                      {drink_name: "The Shepherd", price: 12 },
                      {drink_name: "Lucky Charms", price: 12 },
                      {drink_name: "Razor Mule", price: 10 }
                      ])
                      clydes_menu = Restaurant.find_by(name: "Clyde's").menus.create!([
                        {drink_name: "Double Jack", price: 8 },
                        {drink_name: "Dirt Wolf", price: 7 },
                        {drink_name: "Black Betty", price: 9 },
                        {drink_name: "Edmund Fitzgerald", price: 10 },
                        {drink_name: "Aventus", price: 12 },
                        {drink_name: "Smoke Signals", price: 10 },
                        {drink_name: "Missing Goose", price: 12 }
                        ])
                        danielos_menu = Restaurant.find_by(name:"Daniel O'Connells").menus.create!([
                          {drink_name: "Don't Worry 'Bout It", price: 12 },
                          {drink_name: "Piece O' Work", price: 12 },
                          {drink_name: "Gracias Amigo", price: 12 },
                          {drink_name: "Cheapskates", price: 10 },
                          {drink_name: "The Shepherd", price: 12 },
                          {drink_name: "Lucky Charms", price: 12 },
                          {drink_name: "Razor Mule", price: 10 }
                          ])
                          biergarten = Restaurant.find_by(name: "Biergarten Haus").menus.create!([
                            {drink_name: "Double Jack", price: 8 },
                            {drink_name: "Dirt Wolf", price: 7 },
                            {drink_name: "Black Betty", price: 9 },
                            {drink_name: "Edmund Fitzgerald", price: 10 },
                            {drink_name: "Aventus", price: 12 },
                            {drink_name: "Smoke Signals", price: 10 },
                            {drink_name: "Missing Goose", price: 12 }
                            ])
                            oldebbit = Restaurant.find_by(name:"Old Ebbit Grill").menus.create!([
                              {drink_name: "Don't Worry 'Bout It", price: 12 },
                              {drink_name: "Piece O' Work", price: 12 },
                              {drink_name: "Gracias Amigo", price: 12 },
                              {drink_name: "Cheapskates", price: 10 },
                              {drink_name: "The Shepherd", price: 12 },
                              {drink_name: "Lucky Charms", price: 12 },
                              {drink_name: "Razor Mule", price: 10 }
                              ])
                              bourbon = Restaurant.find_by(name: "Bourbon").menus.create!([
                                {drink_name: "Double Jack", price: 8 },
                                {drink_name: "Dirt Wolf", price: 7 },
                                {drink_name: "Black Betty", price: 9 },
                                {drink_name: "Edmund Fitzgerald", price: 10 },
                                {drink_name: "Aventus", price: 12 },
                                {drink_name: "Smoke Signals", price: 10 },
                                {drink_name: "Missing Goose", price: 12 }
                                ])
                                pearldive = Restaurant.find_by(name:"Pearl Dive").menus.create!([
                                  {drink_name: "Don't Worry 'Bout It", price: 12 },
                                  {drink_name: "Piece O' Work", price: 12 },
                                  {drink_name: "Gracias Amigo", price: 12 },
                                  {drink_name: "Cheapskates", price: 10 },
                                  {drink_name: "The Shepherd", price: 12 },
                                  {drink_name: "Lucky Charms", price: 12 },
                                  {drink_name: "Razor Mule", price: 10 }
                                  ])
                                  satellite = Restaurant.find_by(name:"Satellite Room").menus.create!([
                                    {drink_name: "Don't Worry 'Bout It", price: 12 },
                                    {drink_name: "Piece O' Work", price: 12 },
                                    {drink_name: "Gracias Amigo", price: 12 },
                                    {drink_name: "Cheapskates", price: 10 },
                                    {drink_name: "The Shepherd", price: 12 },
                                    {drink_name: "Lucky Charms", price: 12 },
                                    {drink_name: "Razor Mule", price: 10 }
                                    ])
