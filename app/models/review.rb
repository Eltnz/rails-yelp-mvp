class Review < ApplicationRecord
  RATES = [0, 1, 2, 3, 4, 5].freeze
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: true
  validates :rating, inclusion: { in: RATES }
end
