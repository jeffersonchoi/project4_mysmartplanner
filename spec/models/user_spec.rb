require 'rails_helper'

RSpec.describe User, type: :model do
    it "is invalid without a first_name" do
      user = User.new(first_name: nil, last_name: "Choi", email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: "123", dob: "1991-9-12", gender: "male")
      expect(user).to be_invalid
    end
    it "is invalid without a last_name" do
      user = User.new(first_name: "Jefferson", last_name: nil, email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: "123", dob: "1991-9-12", gender: "male")
      expect(user).to be_invalid
    end
    it "is invalid without a email" do
      user = User.new(first_name: "Jefferson", last_name: "Choi", email: nil, password: "123", password_confirmation: "123", dob: "1991-9-12", gender: "male")
      expect(user).to be_invalid
    end
    it "is invalid without a password" do
      user = User.new(first_name: "Jefferson", last_name: "Choi", email: "jeffersonchoi@gmail.com", password: nil, password_confirmation: "123", dob: "1991-9-12", gender: "male")
      expect(user).to be_invalid
    end
    it "is invalid without a password confirmation" do
      user = User.new(first_name: "Jefferson", last_name: "Choi", email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: nil, dob: "1991-9-12", gender: "male")
      expect(user).to be_invalid
    end
    it "is invalid without a date of birth" do
      user = User.new(first_name: "Jefferson", last_name: "Choi", email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: "123", dob: nil, gender: "male")
      expect(user).to be_invalid
    end
    it "is invalid without a date of gender" do
      user = User.new(first_name: "Jefferson", last_name: "Choi", email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: "123", dob: "1991-9-12", gender: nil)
      expect(user).to be_invalid
    end

end
