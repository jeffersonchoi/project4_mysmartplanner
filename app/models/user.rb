class User < ActiveRecord::Base
  has_many :trips
  has_many :itineraries, through: :trips


  has_secure_password
  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :email, uniqueness: { case_sensitive: false }
  validates :first_name, :last_name, :email, :password_confirmation, :dob, :gender,  presence: true
end
