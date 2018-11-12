class Booking < ApplicationRecord
  belongs_to :beach
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
  validates :total_price, numericality: { only_integer: true }
end
