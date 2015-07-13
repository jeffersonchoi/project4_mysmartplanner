class User < ActiveRecord::Base
  has_many :trips
  has_many :itineraries, through: :trips


  has_secure_password
  validates :first_name, :last_name, :email, :password_confirmation, :dob, :gender,  presence: true
end
