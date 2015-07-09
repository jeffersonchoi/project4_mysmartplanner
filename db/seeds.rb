User.create ([
  {first_name: "Jefferson", last_name: "Choi", email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: "123", dob: "1991-9-12", gender: "male"},
  {first_name: "User 2"},
  {first_name: "User 3"}
  ])

Node.create([
  {node_name: "Universal Studios Hollywood", lat: 34.1381168, long: -118.3533783, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "Attraction", subfeature: "theme_park"},
  {node_name: "Six Flags Magic Mountain", lat: 34.4262717, long: -118.5973039, address: "26101 Magic Mountain Pkwy Valencia, CA 91355", feature: "Attraction", subfeature: "theme_park" },
  {node_name: "Disney California Adventure Park", lat: 33.806112, long: -117.920859, address: "1313 Disneyland Dr, Anaheim, CA 92802", feature: "Attraction", subfeature: "theme_park"},
  {node_name: "Los Angeles County Museum of Art", lat: 34.06371, long: -118.3588138, address: "5905 Wilshire Blvd, Los Angeles, CA 90036", feature: "Attraction", subfeature: "museum"},
  {node_name: "The Getty Center", lat: 34.0780358, long: -118.4740954, address: "1200 Getty Center Dr, Los Angeles, CA 90049", feature: "Attraction", subfeature: "museum"},
  {node_name: "Griffith Observatory", lat: 34.1184341, long: -118.3003935, address: " 2800 E. Observatory Rd., Los Angeles, CA 90027", feature: "Attraction", subfeature: "museum"},
  {node_name: "Venice Beach", lat: 33.9858161, long: -118.4730327, address: "1800 Ocean Front Walk, Venice, CA 90291", feature: "Attraction", subfeature: "sight_landmark"},
  {node_name: "Hollywood Walk of Fame", lat: 34.1015353, long:-118.3391476, address: "Hollywood Blvd at Vine St, Los Angeles, CA 90028", feature: "Attraction", subfeature: "sight_landmark"},
  {node_name: "Walt Disney Concert Hall", lat: 34.0553454, long: -118.249845, address: "111 South Grand Avenue, Los Angeles, CA 90012", feature: "Attraction", subfeature: "sight_landmark"},
  {node_name: "Venice Beach", lat: 33.9858161, long: -118.4730327, address: "1800 Ocean Front Walk, Venice, CA 90291", feature: "Attraction", subfeature: "beach"},
  {node_name: "Santa Monica Beach", lat: 34.0173194, long: -118.5077893, address: "Santa Monica, CA 90403", feature: "Attraction", subfeature: "beach"},
  {node_name: "Manhattan Beach", lat: 33.8894944, long: -118.4010315, address: "Manhattan Beach, CA", feature: "Attraction", subfeature: "beach"},
  {node_name: "University of California, Los Angeles (UCLA)", lat: 34.068921, long: -118.4451811, address: "Los Angeles, CA 90095", feature: "Attraction", subfeature: "school"},
  {node_name: "University of Southern California (USC)", lat: 34.0218702, long: -118.2857969, address: "Los Angeles, CA", feature: "Attraction", subfeature: "school"},
  {node_name: "California Institute of Technology (CALTECH)", lat: 34.1371266, long: -118.1253147, address: "1200 E California Blvd Pasadena, CA 91125", feature: "Attraction", subfeature: "school"},
  {node_name: "The Grove", lat: 34.0716041, long: -118.357937, address: "189 The Grove Drive, Los Angeles, CA 90036", feature: "Attraction", subfeature: "shopping"},
  {node_name: "Two Rodeo (Beverly Hills)", lat: 34.0670516, long: -118.4012416, address: "2 S Rodeo Dr Beverly Hills, CA 90212", feature: "Attraction", subfeature: "shopping"},
  {node_name: "Citadel Outlets", lat: 34.0073436, long: -118.1528874, address: "100 Citadel Drive, Los Angeles, CA 90040", feature: "Attraction", subfeature: "shopping"},
  {node_name: "Dodger Stadium", lat: 34.0746591, long: -118.241547, address: "1000 Elysian Park Avenue, Los Angeles, CA 90012", feature: "Attraction", subfeature: "arean_stadium"},
  {node_name: "Staples Center", lat: 34.0430175, long: -118.2672541, address: "1111 S Figueroa Street, Los Angeles, CA 90015", feature: "Attraction", subfeature: "arean_stadium"},
  {node_name: "Rose Bowl Stadium", lat: 34.1613284, long: -118.1676462, address: "1001 Rose Bowl Dr, Pasadena, CA 91103", feature: "Attraction", subfeature: "arean_stadium"}
  ])


User.all.sample(1).each do |user|
  Trip.create([
    {destination: "Trip 1", user_id: user.id},
    {destination: "Trip 2", user_id: user.id},
    {destination: "Trip 3", user_id: user.id}
    ])
end

Trip.all.sample(4).each do |trip|
    Itinerary.create([
      {trip_id: trip.id},
      {trip_id: trip.id},
      {trip_id: trip.id}
      ])
end
Node.all.each do |node|
  Itinerary.all.each do |itinerary|
    Event.create([
      {node_id: node.id, itinerary_id: itinerary.id}
      ])
  end
end
