class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :pet_reviews, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
