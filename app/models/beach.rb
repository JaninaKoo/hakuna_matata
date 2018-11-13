class Beach < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :photo, presence: true

  mount_uploader :photo
end
