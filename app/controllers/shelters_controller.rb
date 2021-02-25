class SheltersController < ApplicationController
def new 
  @shelter = Shelter.new
end
  def show
    @shelter = Shelter.find(params[:id])
  end
  
end
