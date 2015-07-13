class Event < ActiveRecord::Base
  belongs_to :itinerary
  belongs_to :node

  validates :itinerary_id, :node_id, :start_time, :end_time,  presence: true


  def self.calculate_start_time(start_date, hours_per_day)

    if hours_per_day >= 6 && hours_per_day < 10

      return (start_date + 12.hours)
    elsif hours_per_day >=10
      return (start_date + 9.hours)
    end

  end




end
