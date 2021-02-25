class Shelter < ApplicationRecord
  belongs_to :user
  has_many :pets, dependent: :destroy
  has_many :shelter_reviews, dependent: :destroy
  
  has_one_attached :photo

  validates :name, presence: true
  
end
