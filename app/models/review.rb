class Review < ApplicationRecord
  belongs_to :restaurant
  validates_associated :restaurant
  validates :content, presence: true
  validates :rating, :inclusion => { in: 0..5, message: " should be between 0 and 5" }
  validates :rating, numericality: { only_integer: true }
end
