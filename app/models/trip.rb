class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :itineraries
  has_many :events, through: :itineraries
end
