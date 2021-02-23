class Shelter < ApplicationRecord
  belongs_to :user
  has_many :pets, dependent: :destroy
  has_many :shelter_reviews, dependent: :destroy

end
