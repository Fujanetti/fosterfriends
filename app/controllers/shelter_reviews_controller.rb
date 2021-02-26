class ShelterReviewsController < ApplicationController
  
  def new
    @reservation = Reservation.find(params[:reservation_id])
    @shelter_review = ShelterReview.new
  end

  def create
    @shelter_review = ShelterReview.new(shelter_review_params)
    @reservation = Reservation.find(params[:reservation_id])
    
    @shelter = @reservation.pet.shelter
    
    @user = current_user
    
    @shelter_review.shelter = @shelter
    @shelter_review.user = @user
    if @shelter_review.save
      redirect_to pet_path(@reservation.pet)
    else
      render :new
    end
  end

  private
  
  def shelter_review_params
    params.require(:shelter_review).permit(:rating, :content, :pet_id, :photos)
  end
end
