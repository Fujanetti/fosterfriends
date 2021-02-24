class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @pet = Pet.find(params[:pet_id])
    @user = current_user
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @pet = Pet.find(params[:pet_id])
    @user = current_user
    @reservation.pet = @pet
    @reservation.save

    redirect_to user_path(@user)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:total_price, :start_date, :end_date)
  end
end
