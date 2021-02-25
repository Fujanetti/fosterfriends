class PetReview < ApplicationRecord
  belongs_to :pet
  belongs_to :user

  has_many_attached :photos
end
