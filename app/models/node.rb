class Node < ActiveRecord::Base
  has_many :events
  has_many :itineraries, though: :events
end
