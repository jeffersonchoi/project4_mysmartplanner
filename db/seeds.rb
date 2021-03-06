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
  {node_name: "Rose Bowl Stadium", lat: 34.1613284, long: -118.1676462, address: "1001 Rose Bowl Dr, Pasadena, CA 91103", feature: "Attraction", subfeature: "arean_stadium", picture: "http://i.kinja-img.com/gawker-media/image/upload/xqqgqui9c1d3vetbkj5t.jpg"},
  {node_name: "Knott's Berry Farm", lat: 33.8443038, long: -118.0002265, address: " 8039 Beach Blvd, Buena Park, CA 90620", feature: "Attraction", subfeature: "Theme Parks", picture: "http://www.dadlogic.net/wp-content/uploads/2013/02/Knotts-Berry-Farm.jpg"},
  {node_name: "Pacific Park", lat: 34.1395725, long: -118.2663666, address: " 380 Santa Monica Pier, Santa Monica, CA 90401", feature: "Attraction", subfeature: "Theme Parks", picture: "http://upload.wikimedia.org/wikipedia/commons/4/4f/Pacific_Park_Enterance.JPG"},
  {node_name: "Raging Waters San Dimas", lat: 34.096695, long: -117.810734, address: "111 Raging Waters Dr, San Dimas, CA 91773", feature: "Attraction", subfeature: "Theme Parks", picture: "http://static.panoramio.com/photos/large/41570698.jpg"},
  {node_name: "Hammer Museum", lat: 34.05945, long: -118.4435311, address: "10899 Wilshire Blvd, Los Angeles, CA 90024", feature: "Attraction", subfeature: "Museums", picture:"http://ww1.experiencela.com/Uploads/20040210165422.jpg"},
  {node_name: "Natural History Museum of Los Angeles County", lat: 34.0170887, long: -118.2887598, address: "900 Exposition Blvd, Los Angeles, CA 90007", feature: "Attraction", subfeature: "Museums", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/NaturalHistoryMuseumOfLosAngelesCounty.jpg/1600px-NaturalHistoryMuseumOfLosAngelesCounty.jpg"},
  {node_name: "Fowler Museum at UCLA", lat: 34.0729274, long: -118.442983, address: "308 Charles E Young Dr N, Los Angeles, CA 90024", feature: "Attraction", subfeature: "Museums", picture: "https://d3n8a8pro7vhmx.cloudfront.net/awaketheyoganandamovie/pages/173/attachments/original/1432678008/IMG_1065.jpg?1432678008"},
  {node_name: "Dockweiler State Beach", lat: 33.9422601, long: -118.4424214, address: "12000 Vista del Mar, Playa del Rey, CA 90293", feature: "Attraction", subfeature: "Beaches", picture: "http://blogs.dailybreeze.com/history/files/import/55206-dockweilerentrance-thumb-300x400-55205.jpg"},
  {node_name: "Will Rogers Beach", lat: 34.0392744, long: -118.5500771, address: "17000 Pacific Coast Hwy, Pacific Palisades, CA 90272", feature: "Attraction", subfeature: "Beaches", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Will_Rogers_State_Beach_1.JPG/440px-Will_Rogers_State_Beach_1.JPG"},
  {node_name: "Mother's Beach", lat: 33.9812522, long:-118.4577449, address: "4101 Admiralty Way, Marina Del Rey, CA 90292", feature: "Attraction", subfeature: "Beaches", picture: "http://s3-media2.fl.yelpcdn.com/bphoto/KjBMZhDR8gPnD9nQ_-uFVQ/348s.jpg"},
  {node_name: "Westfield Century City", lat: 34.058677, long: -118.418873, address: "10250 Santa Monica Blvd, Los Angeles, CA 90067", feature: "Attraction", subfeature: "Shopping", picture:"http://images.travelpod.com/users/arsucasas/1.1267827015.westfield-mall-at-century-city.jpg"},
  {node_name: "Madison Brentwood", lat: 34.054253, long: -118.4648945, address: "Brentwood Gardens, 11677 San Vicente Blvd, Los Angeles, CA 90049", feature: "Attraction", subfeature: "Shopping", picture: "http://pics3.city-data.com/businesses/p/8/2/4/9/8058249.JPG"},
  {node_name: "Westside Pavilion", lat: 34.0401391, long: -118.4274689, address: "10800 West Pico Boulevard, Suite 312, Los Angeles, CA 90064", feature: "Attraction", subfeature: "Shopping", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Westside_Pavilion.JPG/500px-Westside_Pavilion.JPG"},
  {node_name: "Hollywood Bowl", lat: 34.112224, long: -118.3391279, address: "2301 Highland Ave, Los Angeles, CA 90068", feature: "Attraction", subfeature: "Sights & Landmarks", picture: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Hollywood_bowl_and_sign.jpg"},
  {node_name: "Los Angeles City Hall", lat: 34.0537136, long: -118.2426533, address: "200 N Spring St, Los Angeles, CA 90012", feature: "Attraction", subfeature: "Sights & Landmarks", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Los_Angeles_City_Hall_%28color%29_edit1.jpg/500px-Los_Angeles_City_Hall_%28color%29_edit1.jpg"},
  {node_name: "La Brea Tar Pits", lat: 34.0637876, long: -118.3554337, address: "5801 Wilshire Blvd, Los Angeles, CA 90036", feature: "Attraction", subfeature: "Sights & Landmarks", picture: "http://themacandcheesechronicles.com/wp-content/uploads/2008/08/cimg3898-300x225.jpg"},
  {node_name: "Los Angeles Memorial Sports Arena", lat: 34.0127959, long: -118.2845431, address: "3939 S Figueroa St, Los Angeles, CA 90037", feature: "Attraction", subfeature: "Arenas & Stadiums", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Los_angeles_sports_arena.jpg/500px-Los_angeles_sports_arena.jpg"},
  {node_name: "StubHub Center", lat: 33.8643378, long: -118.2611224, address: "18400 Avalon Blvd, Carson, CA 90746", feature: "Attraction", subfeature: "Arenas & Stadiums", picture: "http://cdn.archinect.net/images/615x/u6/u6zkka42tcr7pa7f.jpg"},
  {node_name: "Pauley Pavilion", lat: 34.0703581, long: -118.4469123, address: "301 Westwood Plaza, Los Angeles, CA 90095", feature: "Attraction", subfeature: "Arenas & Stadiums", picture: "http://image.cdnllnwnl.xosnetwork.com/fls/30500/old_site/images/3172359.jpeg"},
  {node_name: "California State University, Los Angeles", lat: 34.0672279, long: -118.1667405, address: "5151 State University Dr, Los Angeles, CA 90032", feature: "Attraction", subfeature: "Schools", picture: "http://www.thebestcolleges.org/wp-content/uploads/2011/08/California_State_University_Los_Angeles.jpg"},
  {node_name: "California State University, Northridge", lat: 34.2407144, long: -118.5292846, address: "18111 Nordhoff St, Northridge, CA 91330", feature: "Attraction", subfeature: "Schools", picture: "http://www.bookwormroom.com/wp-content/uploads/2014/12/Cal_State_University_Northridge-300x225.jpg"},
  {node_name: "Mount St. Mary's University", lat: 34.085238, long: -118.4823817, address: "12001 Chalon Rd, Los Angeles, CA 90049", feature: "Attraction", subfeature: "Schools", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Bradley_Hall.jpg/440px-Bradley_Hall.jpg"}
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
