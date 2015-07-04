class User < ActiveRecord::Base
  has_many :trips
  has_many :itineraries, through: :trips
end
