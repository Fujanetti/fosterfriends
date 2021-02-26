class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user_id: current_user)
  end
  
  def new
    @user = current_user
    if @user 
    @reservation = Reservation.new
    @pet = Pet.find(params[:pet_id])
    else
      redirect_to user_session_path
    end
  
    

  end

  def create
    @reservation = Reservation.new(reservation_params)
    @pet = Pet.find(params[:pet_id])
    @user = current_user
    @reservation.pet = @pet
    @reservation.user = @user
    if @reservation.save
      redirect_to reservations_path, notice: "Reservation successful! Your friend is waiting for you!"
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:total_price, :start_date, :end_date)
  end
end
