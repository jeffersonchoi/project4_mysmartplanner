# User.create ([
#   {first_name: "Jefferson", last_name: "Choi", email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: "123", dob: "1991-9-12", gender: "male"},
#   {first_name: "User 2"},
#   {first_name: "User 3"}
#   ])

Node.create([
  {node_name: "Universal Studios Hollywood", lat: 34.1381168, long: -118.3533783, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "Attraction", subfeature: "theme_park", picture: "http://www.hollywoodinnexpressnorth.com/img/photos/universal-studios.jpg" },
  {node_name: "Six Flags Magic Mountain", lat: 34.4262717, long: -118.5973039, address: "26101 Magic Mountain Pkwy Valencia, CA 91355", feature: "Attraction", subfeature: "theme_park", picture: "https://40.media.tumblr.com/tumblr_ll88dchFy21qfeab4o1_500.jpg"},
  {node_name: "Disney California Adventure Park", lat: 33.806112, long: -117.920859, address: "1313 Disneyland Dr, Anaheim, CA 92802", feature: "Attraction", subfeature: "theme_park", picture: "http://img3.wikia.nocookie.net/__cb20120531063630/disney/images/1/16/Disneys-california-adventure_alt.jpeg"},
  {node_name: "Los Angeles County Museum of Art", lat: 34.06371, long: -118.3588138, address: "5905 Wilshire Blvd, Los Angeles, CA 90036", feature: "Attraction", subfeature: "museum", picture: "http://extendcreative.com/wp-content/uploads/2014/06/Lacma-Museum-Lights-at-Night.jpg"},
  {node_name: "The Getty Center", lat: 34.0780358, long: -118.4740954, address: "1200 Getty Center Dr, Los Angeles, CA 90049", feature: "Attraction", subfeature: "museum", picture: "https://ancientglass.files.wordpress.com/2011/05/getty_center_central_garden.jpg"},
  {node_name: "Griffith Observatory", lat: 34.1184341, long: -118.3003935, address: " 2800 E. Observatory Rd., Los Angeles, CA 90027", feature: "Attraction", subfeature: "museum", picture: "https://upload.wikimedia.org/wikipedia/commons/0/05/Griffith_observatory.jpg"},
  {node_name: "Hollywood Sign", lat: 34.1341151, long: -118.3215482, address: "Los Angeles, CA", feature: "Attraction", subfeature: "sight_landmark", picture: "https://blogs.chapman.edu/wp-content/uploads/sites/26/2014/09/Hollywood-Sign.jpg"},
  {node_name: "Hollywood Walk of Fame", lat: 34.1015353, long:-118.3391476, address: "Hollywood Blvd at Vine St, Los Angeles, CA 90028", feature: "Attraction", subfeature: "sight_landmark", picture: "http://static.thousandwonders.net/Hollywood.Walk.of.Fame.640.5620.jpg"},
  {node_name: "Walt Disney Concert Hall", lat: 34.0553454, long: -118.249845, address: "111 South Grand Avenue, Los Angeles, CA 90012", feature: "Attraction", subfeature: "sight_landmark", picture: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Image-Disney_Concert_Hall_by_Carol_Highsmith_edit.jpg"},
  {node_name: "Venice Beach", lat: 33.9858161, long: -118.4730327, address: "1800 Ocean Front Walk, Venice, CA 90291", feature: "Attraction", subfeature: "beach", picture: "http://www.venicebeachpictures.com/images/venice-beach-bike-path.jpg"},
  {node_name: "Santa Monica Beach", lat: 34.0173194, long: -118.5077893, address: "Santa Monica, CA 90403", feature: "Attraction", subfeature: "beach", picture: "https://santamonicabeachmom.files.wordpress.com/2011/11/santa-monica-pier-california.jpg"},
  {node_name: "Manhattan Beach", lat: 33.8894944, long: -118.4010315, address: "Manhattan Beach, CA", feature: "Attraction", subfeature: "beach", picture: "https://upload.wikimedia.org/wikipedia/commons/c/ca/Manhattan_Beach_houses.jpg"},
  {node_name: "University of California, Los Angeles (UCLA)", lat: 34.068921, long: -118.4451811, address: "Los Angeles, CA 90095", feature: "Attraction", subfeature: "school", picture: "https://s3-us-west-1.amazonaws.com/ov-file-archive/piece/42/2/736742.0.ucla.jpeg"},
  {node_name: "University of Southern California (USC)", lat: 34.0218702, long: -118.2857969, address: "Los Angeles, CA", feature: "Attraction", subfeature: "school", picture: "https://upload.wikimedia.org/wikipedia/commons/8/83/Doheny.jpg"},
  {node_name: "California Institute of Technology (CALTECH)", lat: 34.1371266, long: -118.1253147, address: "1200 E California Blvd Pasadena, CA 91125", feature: "Attraction", subfeature: "school", picture: "https://upload.wikimedia.org/wikipedia/commons/9/9c/Robert_A._Millikan_Memorial_Library_at_Caltech.jpg"},
  {node_name: "The Grove", lat: 34.0716041, long: -118.357937, address: "189 The Grove Drive, Los Angeles, CA 90036", feature: "Attraction", subfeature: "shopping", picture: "http://www.lifescapesintl.com/libraries/images/portfolio/the-grove/the-grove-7.jpg"},
  {node_name: "Two Rodeo (Beverly Hills)", lat: 34.0670516, long: -118.4012416, address: "2 S Rodeo Dr Beverly Hills, CA 90212", feature: "Attraction", subfeature: "shopping", picture: "http://lovebeverlyhills.com/uploads/cache/Image/Block/id/2308/2d912a7bb37bc7b27d6617f01a8190e40342da9b.jpg"},
  {node_name: "Citadel Outlets", lat: 34.0073436, long: -118.1528874, address: "100 Citadel Drive, Los Angeles, CA 90040", feature: "Attraction", subfeature: "shopping", picture: "http://d14dsi4x2zx6ql.cloudfront.net/files/styles/welcome_image/public/VCW_SI_OutletMalls_T3_Prayitno_1280x642.jpg?itok=ke9OIdwp"},
  {node_name: "Dodger Stadium", lat: 34.0746591, long: -118.241547, address: "1000 Elysian Park Avenue, Los Angeles, CA 90012", feature: "Attraction", subfeature: "arean_stadium", picture: "http://www.losangeleswalks.org/wp-content/uploads/2015/06/Dodger_Stadium.jpg"},
  {node_name: "Staples Center", lat: 34.0430175, long: -118.2672541, address: "1111 S Figueroa Street, Los Angeles, CA 90015", feature: "Attraction", subfeature: "arean_stadium", picture: "http://i.ytimg.com/vi/9TpBqR6kYnU/maxresdefault.jpg"},
  {node_name: "Rose Bowl Stadium", lat: 34.1613284, long: -118.1676462, address: "1001 Rose Bowl Dr, Pasadena, CA 91103", feature: "Attraction", subfeature: "arean_stadium", picture: "http://i.kinja-img.com/gawker-media/image/upload/xqqgqui9c1d3vetbkj5t.jpg"}
  ])

#
# User.all.sample(1).each do |user|
#   Trip.create([
#     {destination: "Trip 1", user_id: user.id},
#     {destination: "Trip 2", user_id: user.id},
#     {destination: "Trip 3", user_id: user.id}
#     ])
# end
#
# Trip.all.sample(4).each do |trip|
#     Itinerary.create([
#       {trip_id: trip.id},
#       {trip_id: trip.id},
#       {trip_id: trip.id}
#       ])
# end
# Node.all.each do |node|
#   Itinerary.all.each do |itinerary|
#     Event.create([
#       {node_id: node.id, itinerary_id: itinerary.id}
#       ])
#   end
# end
