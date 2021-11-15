class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user

  validates :begin_date, :end_date, presence: true

  enum status: {pending: 1, accepted: 2, cancelled: 3, declined: 4}
end
