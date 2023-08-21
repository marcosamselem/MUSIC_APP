class Booking < ApplicationRecord
  belongs_to :instrument
  belongs_to :user
  validates :start, presence: true
  validates :end, presence: true
end
