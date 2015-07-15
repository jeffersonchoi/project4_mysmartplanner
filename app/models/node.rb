class Node < ActiveRecord::Base
  searchkick word_middle: [:node_name, :subfeature]  

  has_many :events
  has_many :itineraries, through: :events

  validates :node_name, :lat, :long, :address, :feature, :subfeature,  presence: true
  validates :lat, :long,  numericality: true

end
