class PetsController < ApplicationController

  def index
    pets = Pet.all
    render json: pets
  end

  def create
    pet = Pet.create(pet_params)
    render json: pet
  end

def update
  end

  def destroy
  end

end

private
def pet_params
    params.require(:pet).permit(:name, :age, :enjoys, :image)
  end