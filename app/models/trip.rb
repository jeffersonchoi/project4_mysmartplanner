class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :itineraries
  has_many :events, through: :itineraries
  has_many :interests

  validates :destination, :start_date, :end_date, :hours_per_day, :interest,  presence: true
end
