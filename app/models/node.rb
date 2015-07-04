class Node < ActiveRecord::Base
  has_many :events
  has_many :itineraries, through: :events
end
