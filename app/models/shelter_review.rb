class ShelterReview < ApplicationRecord
  belongs_to :shelter
  belongs_to :user

  validates :rating, inclusion: { in: 0..5, message: 'must be a number between 1-5'} 
  validates :content, presence: true
  has_many_attached :photos
end
