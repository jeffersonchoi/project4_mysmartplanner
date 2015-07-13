require 'rails_helper'

RSpec.describe Event, type: :model do
  it "is invalid without a start_time" do
    event = Event.new(itinerary_id: 1, node_id: 1, start_time: nil, end_time: "2015-09-12 18:00:00")
    expect(event).to be_invalid
  end
  it "is invalid without a end_time" do
    event = Event.new(itinerary_id: 1, node_id: 1, start_time: "2015-09-12 15:00:00", end_time: nil)
    expect(event).to be_invalid
  end
  it "is invalid without a itinerary_id" do
    event = Event.new(itinerary_id: nil, node_id: 1, start_time: "2015-09-12 15:00:00", end_time: "2015-09-12 18:00:00")
    expect(event).to be_invalid
  end
  it "is invalid without a node_id" do
    event = Event.new(itinerary_id: 1, node_id: nil, start_time: "2015-09-12 15:00:00", end_time: "2015-09-12 18:00:00")
    expect(event).to be_invalid
  end

end
