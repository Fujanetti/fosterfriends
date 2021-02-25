class Pet < ApplicationRecord
  belongs_to :shelter

  has_many :pet_reviews, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :age, presence: true
  validates :animal_type, presence: true
  validates :price_per_day, presence: true
  validates :gender, presence: true
  validates :breed, presence: true
  validates :description, presence: true
end
