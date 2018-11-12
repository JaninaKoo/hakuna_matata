class Beach < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
end
