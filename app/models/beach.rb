class Beach < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :photo, presence: true

  mount_uploader :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
