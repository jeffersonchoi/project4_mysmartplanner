require 'rails_helper'

RSpec.describe User, type: :model do
    it "is invalid without a first_name" do
      user = User.new(first_name: nil, last_name: "Choi", email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: "123", dob: "1991-9-12", gender: "male")
      expect(userp).to be_invalid
    end

end
