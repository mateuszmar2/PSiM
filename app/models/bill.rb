class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :reservation

  validates_presence_of :cost
  validates_numericality_of :cost, :message=>"Cost must be a number"
end
