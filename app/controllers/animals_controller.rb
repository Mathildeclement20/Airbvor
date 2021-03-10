class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
    @animals = Animal.where(specie: @animal.specie).limit(4)
    @geocode_animal = Animal.where.not(latitude: nil, longitude: nil)
    @markers = @geocode_animal.map do |animal|
      {lat: animal.latitude,
      lng: animal.longitude}
    end
  end
end
