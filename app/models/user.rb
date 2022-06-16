class User < ApplicationRecord
  has_many :reservations
  has_many :bills

  validates_presence_of :email, uniqueness: { case_sensitive: false }
  validates_presence_of :license_plate, uniqueness: { case_sensitive: false }
end
