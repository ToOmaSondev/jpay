class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :price, :size, presence: true
end
