class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :country, :price_per_day, :size, presence: true
end
