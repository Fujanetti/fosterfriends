class Shelter < ApplicationRecord
  belongs_to :user
  has_many :pets
  has_many :shelter_reviews

  validates :name, presence: true
end
