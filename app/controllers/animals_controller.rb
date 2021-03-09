class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
    @animals = Animal.where(specie: @animal.specie).limit(4)
  end
end
