require 'rails_helper'

RSpec.describe Node, type: :model do
  it "is invalid without a node_name" do
    node = Node.new(node_name: nil, lat: 34.1381168, long: -118.3533783, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "Attraction", subfeature: "theme_park", picture: "http://www.hollywoodinnexpressnorth.com/img/photos/universal-studios.jpg")
    expect(node).to be_invalid
  end
  it "is invalid without a lat" do
    node = Node.new(node_name: "universal-studios", lat: nil, long: -118.3533783, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "Attraction", subfeature: "theme_park", picture: "http://www.hollywoodinnexpressnorth.com/img/photos/universal-studios.jpg")
    expect(node).to be_invalid
  end
  it "is invalid without a long" do
    node = Node.new(node_name: "universal-studios", lat: 34.1381168, long: nil, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "Attraction", subfeature: "theme_park", picture: "http://www.hollywoodinnexpressnorth.com/img/photos/universal-studios.jpg")
    expect(node).to be_invalid
  end
  it "is invalid without a address" do
    node = Node.new(node_name: "universal-studios", lat: 34.1381168, long: -118.3533783, address: nil, feature: "Attraction", subfeature: "theme_park", picture: "http://www.hollywoodinnexpressnorth.com/img/photos/universal-studios.jpg")
    expect(node).to be_invalid
  end
  it "is invalid without a feature" do
    node = Node.new(node_name: "universal-studios", lat: 34.1381168, long: -118.3533783, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: nil, subfeature: "theme_park", picture: "http://www.hollywoodinnexpressnorth.com/img/photos/universal-studios.jpg")
    expect(node).to be_invalid
  end
  it "is invalid without a subfeature" do
    node = Node.new(node_name: "universal-studios", lat: 34.1381168, long: -118.3533783, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "Attraction", subfeature: nil, picture: "http://www.hollywoodinnexpressnorth.com/img/photos/universal-studios.jpg")
    expect(node).to be_invalid
  end
  it "is invalid if lat is not a float" do
    node = Node.new(node_name: "universal-studios", lat: "hi", long: -118.3533783, address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "Attraction", subfeature: "theme_park", picture: "http://www.hollywoodinnexpressnorth.com/img/photos/universal-studios.jpg")
    expect(node).to be_invalid
  end
  it "is invalid if long is not a float" do
    node = Node.new(node_name: "universal-studios", lat: 34.1381168, long: "hi", address: "100 Universal City Plaza, Los Angeles, CA 91608", feature: "Attraction", subfeature: "theme_park", picture: "http://www.hollywoodinnexpressnorth.com/img/photos/universal-studios.jpg")
    expect(node).to be_invalid
  end


end
