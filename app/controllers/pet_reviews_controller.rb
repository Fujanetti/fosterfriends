class PetReviewsController < ApplicationController

  def new
    # @pet = Pet.find(params[:pet_id])
    @reservation = Reservation.find(params[:reservation_id])
    @pet_review = PetReview.new
  end

  def create
    @pet_review = PetReview.new(pet_review_params)
    @reservation = Reservation.find(params[:reservation_id])
    @pet = @reservation.pet
    @user = current_user
    @pet_review.pet = @pet
    @pet_review.user = @user
    if @pet_review.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
    
    
   
  end

  private
  
  def pet_review_params
    params.require(:pet_review).permit(:rating, :content, :pet_id)
  end
end
