class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :pet_reviews
  has_many :reservations

  validates :name, presence: true
  validates :age, presence: true
  validates :animal_type, presence: true
  validates :price_per_day, presence: true
  validates :gender, presence: true
  validates :breed, presence: true
  validates :description, presence: true
end
