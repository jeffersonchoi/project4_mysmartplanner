User.create ([
  {first_name: "Jefferson", last_name: "Choi", email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: "123", dob: "1991-9-12", gender: "male"},
  {first_name: "User 2"},
  {first_name: "User 3"}
  ])

Node.create([
  {node_name: "Universal Studios Hollywood", lat: 34.1381168, long: -118.3533783, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "Attraction", subfeature: "Theme Parks"},
  {node_name: "Six Flags Magic Mountain ", lat: 34.4262717, long: -118.5973039, address: "26101 Magic Mountain Pkwy Valencia, CA 91355", feature: "Attraction", subfeature: "Theme Parks" },
  {node_name: "The Getty Center", lat: 34.0780358, long: -118.4740954, address: "1200 Getty Center Dr, Los Angeles, CA 90049", feature: "Attraction", subfeature: "Museums"},
  {node_name: "Griffith Observatory", lat: 34.1184341, long: -118.3003935, address: " 2800 E. Observatory Rd., Los Angeles, CA 90027", feature: "Attraction", subfeature: "Museums"},
  {node_name: "Venice Beach", lat: 33.9858161, long: -118.4730327, address: "1800 Ocean Front Walk, Venice, CA 90291", feature: "Attraction", subfeature: "Sight & Landmarks"},
  {node_name: "Hollywood Walk of Fame", lat: 34.1015353, long:-118.3391476, address: "Hollywood Blvd at Vine St, Los Angeles, CA 90028", feature: "Attraction", subfeature: "Sight & Landmarks"}
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
