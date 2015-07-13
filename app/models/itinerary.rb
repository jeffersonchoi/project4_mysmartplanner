class Itinerary < ActiveRecord::Base
  belongs_to :trip
  has_many :events
  has_many :nodes, through: :events

  # validates :trip_id, presence: true
end
