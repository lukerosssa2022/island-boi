class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings

  COUNTRIES = ["Isreal", "Spain", "Germany", "South Africa"]

  validates :name, :territory, :price_per_day, :size, presence: true
end
