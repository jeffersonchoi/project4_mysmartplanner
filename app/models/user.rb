class User < ActiveRecord::Base
  has_many :trips
  has_many :itineraries, through: :trips


  has_secure_password(validations: false)

  def self.new_guest
    new { |u| u.guest = true }
  end

  def self.name
    guest ? "Guest" : first_name
  end
end
