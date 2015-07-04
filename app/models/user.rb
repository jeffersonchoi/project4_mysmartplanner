class User < ActiveRecord::Base
  has_many :trips
  has_many :itineraries, through: :trips


  has_secure_password
end
