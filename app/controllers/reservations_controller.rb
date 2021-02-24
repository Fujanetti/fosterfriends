class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @pet = Pet.find(params[:pet_id])
  end

  def create
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :age, :animal_type, :price_per_day, :gender, :breed, :description)
  end
end
