class SheltersController < ApplicationController
  def new 
    @shelter = Shelter.new
  end

def create 
  @shelter = Shelter.new(shelter_params)
  @shelter.user = current_user

  if @shelter.save
    redirect_to shelter_path(@shelter)
  else 
    render :new
  end 
end

  def show
    @shelter = Shelter.find(params[:id])
    @pets = @shelter.pets
  end

  def shelter_params 
    params.require(:shelter).permit(:name)
  end 
end
