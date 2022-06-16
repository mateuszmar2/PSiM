class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  belongs_to :bill

  validates_presence_of :reservation_start
  validates_presence_of :reservation_end
end
