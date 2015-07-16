class User < ActiveRecord::Base
  has_many :trips
  has_many :itineraries, through: :trips


  has_secure_password
  validates_length_of :password,  within: 6..20, too_long: 'pick a shorter password', too_short: 'pick a longer password'
  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :email, uniqueness: { case_sensitive: false }
  validates :first_name, :last_name, :email, :password_confirmation, :dob, :gender,  presence: true
end
