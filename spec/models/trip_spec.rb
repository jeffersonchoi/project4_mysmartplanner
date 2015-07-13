require 'rails_helper'

RSpec.describe Trip, type: :model do
    it "is invalid without a destination" do
      trip = Trip.new(destination: nil, start_date: "2015-9-12", end_date: "2015-9-12", budget: 123, hours_per_day: 6)
      expect(trip).to be_invalid
    end
    it "is invalid without a start_date" do
      trip = Trip.new(destination: "Los Angeles", start_date: nil, end_date: "2015-9-12", budget: 123, hours_per_day: 6)
      expect(trip).to be_invalid
    end
    it "is invalid without a end_date" do
      trip = Trip.new(destination: "Los Angeles", start_date: "2015-9-12", end_date: nil, budget: 123, hours_per_day: 6)
      expect(trip).to be_invalid
    end
    it "is invalid without a hours_per_day" do
      trip = Trip.new(destination: "Los Angeles", start_date: "2015-9-12", end_date: "2015-9-12", budget: 123, hours_per_day: nil)
      expect(trip).to be_invalid
    end
    it "is invalid if start_date is before current date" do
      trip = Trip.new(destination: "Los Angeles", start_date: "2015-7-12", end_date: "2015-9-12", budget: 123, hours_per_day: 6)
      expect(trip).to be_invalid
    end
    it "is invalid if end_date is before start date" do
      trip = Trip.new(destination: "Los Angeles", start_date: "2015-9-12", end_date: "2015-9-10", budget: 123, hours_per_day: 6)
      expect(trip).to be_invalid
    end
    it "is invalid if hours_per_day is less than 3 or larger than 21" do
      trip1 = Trip.new(destination: "Los Angeles", start_date: "2015-9-12", end_date: "2015-9-13", budget: 123, hours_per_day: 3, interest: "theme_park")
      trip2 = Trip.new(destination: "Los Angeles", start_date: "2015-9-12", end_date: "2015-9-13", budget: 123, hours_per_day: 21)
      expect(trip1).to be_invalid
      expect(trip2).to be_invalid
    end


end
