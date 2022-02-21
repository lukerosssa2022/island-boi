class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :island

  validate :start_date, precense: true
  validate :end_date, precense: true

end
