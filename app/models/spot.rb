class Spot < ApplicationRecord
  has_many :reservations

  validates_presence_of :coordinate_x
  validates_numericality_of :coordinate_x, :message=>"Coordinate must be a number"
  validates_presence_of :coordinate_y
  validates_numericality_of :coordinate_y, :message=>"Coordinate must be a number"
end
