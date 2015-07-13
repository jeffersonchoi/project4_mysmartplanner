class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :itineraries
  has_many :events, through: :itineraries
  has_many :interests

  validates :destination, :start_date, :end_date, :hours_per_day, :interest,  presence: true
  validate :end_date_is_after_start_date
  validate :start_date_cannot_be_in_the_past
  validates_inclusion_of :hours_per_day, in: 6..12, message: "Please select a value between 6 to 12"


private


def start_date_cannot_be_in_the_past
 errors.add(:start_date, "can't be in the past") if
   !start_date.blank? and start_date < Date.today
end


  def end_date_is_after_start_date
  return if end_date.blank? || start_date.blank?

  if end_date < start_date
    errors.add(:end_date, "cannot be before the start date")
  end
end


end
