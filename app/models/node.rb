class Node < ActiveRecord::Base
  has_many :events
  has_many :itineraries, through: :events

    validates :node_name, :lat, :long, :address, :feature, :subfeature,  presence: true
    validates :lat, :long,  numericality: true

end
