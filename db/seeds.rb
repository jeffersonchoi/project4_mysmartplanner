User.create ([
  {first_name: "User 1"},
  {first_name: "User 2"},
  {first_name: "User 3"}
  ])

Node.create([
  {node_name: "Universal Studios Hollywood", lat: 34.1381168, long: -118.3533783, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "places", subfeature: "Theme Parks"},
  {node_name: "Node 2"},
  {node_name: "Node 3"}
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
