class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :pet_reviews
  has_many :reservations
end
