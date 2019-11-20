class PetsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end
end
