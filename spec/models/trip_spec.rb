require 'rails_helper'

RSpec.describe Trip, type: :model do
    it "is invalid without a destination" do
      trip = Trip.new(destination: nil, start_date: "2015-9-12", end_date: "2015-9-12", budget: 123, hours_per_day: 6, interest: "theme_park")
      expect(trip).to be_invalid
    end
    it "is invalid without a start_date" do
      trip = Trip.new(destination: "Los Angeles", start_date: nil, end_date: "2015-9-12", budget: 123, hours_per_day: 6, interest: "theme_park")
      expect(trip).to be_invalid
    end
    it "is invalid without a end_date" do
      trip = Trip.new(destination: "Los Angeles", start_date: "2015-9-12", end_date: nil, budget: 123, hours_per_day: 6, interest: "theme_park")
      expect(trip).to be_invalid
    end
    it "is invalid without a hours_per_day" do
      trip = Trip.new(destination: "Los Angeles", start_date: "2015-9-12", end_date: "2015-9-12", budget: 123, hours_per_day: nil, interest: "theme_park")
      expect(trip).to be_invalid
    end
    it "is invalid without an interest" do
      trip = Trip.new(destination: "Los Angeles", start_date: "2015-9-12", end_date: "2015-9-12", budget: 123, hours_per_day: 6, interest: nil)
      expect(trip).to be_invalid
    end
    it "is invalid if start_date is before current date" do
      trip = Trip.new(destination: "Los Angeles", start_date: "2015-7-12", end_date: "2015-9-12", budget: 123, hours_per_day: 6, interest: "theme_park")
      expect(trip).to be_invalid
    end
    it "is invalid if end_date is before startp' date" do
      trip = Trip.new(destination: "Los Angeles", start_date: "2015-9-12", end_date: "2015-9-10", budget: 123, hours_per_day: 6, interest: "theme_park")
      expect(trip).to be_invalid
    end

end
