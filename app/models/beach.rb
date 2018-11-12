class Beach < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true, format: { with: /\d+\,{1}\d{2}/ }
end
