class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings

  COUNTRIES = ["Isreal", "Spain", "Germany", "South Africa"]

  validates :name, :country, :price_per_day, :size, presence: true
end
