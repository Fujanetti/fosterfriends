class PetsController < ApplicationController
  def home
    
  end

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
    @shelter = Shelter.find(params[:shelter_id])
  end

  def create
    raise
    @pet = Pet.new(pet_params)

    @pet.save

  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def updated
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)

    redirect_to pet_path(@peth)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to pet_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :animal_type, :price_per_day, :gender, :breed, :description)
  end
end
