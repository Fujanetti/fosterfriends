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
    @pet = Pet.new(pet_params)
    @shelter = Shelter.find(params[:shelter_id])
    @pet.shelter = @shelter
    @pet.save

    # redirect_to shelter_path(@shelter) Once shelter views are created uncomment this and delete line below
    redirect_to pets_path
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)

    redirect_to shelter_path(@pet.shelter_id)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to pet_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :animal_type, :price_per_day, :gender, :breed, :description, :photo)
  end
end
