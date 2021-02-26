class PetReview < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  validates :rating, inclusion: { in: 0..5, message: 'must be a number between 1-5'} 
  validates :content, presence: true
  has_many_attached :photos

  def blank_stars
    5 - pet.pet_reviews.first.rating # need to be fixed to find corrispondent pet
  end
end
