class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :islands
  has_many :bookings
  has_many :received_bookings, through: :islands, source: :bookings

  validates :email, presence: true, uniqueness: true
end
