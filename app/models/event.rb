class Event < ActiveRecord::Base
  belongs_to :itinerary
  belongs_to :node

  def self.calculate_start_time(hours_per_day)

    if hours_per_day >= 6 && hours_per_day < 10
      return "05:00".to_time
    elsif hours_per_day >=10
      return "02:00".to_time
    end

  end




end
