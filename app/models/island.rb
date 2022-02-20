class Island < ApplicationRecord
  belongs_to :user

  validates :name, :country, :price_per_day, :size, presence: true
end
