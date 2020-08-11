class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :destroy, :update]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new()
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save!

    redirect_to pet_path(@pet)
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy

    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :species, :found_on)
  end


end
