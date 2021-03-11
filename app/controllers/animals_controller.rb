class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :find]

  def index
    @animals = Animal.all
    set_markers
  end

  def show
    @animal = Animal.find(params[:id])
    @animals = Animal.where(specie: @animal.specie).limit(4)
    set_markers
  end

  def find
    specie = Animal.species[params["specie"].to_i]
    @animals = Animal.where(specie: specie)
    set_markers
    render :index
  end

  private

  def set_markers
    @markers = @animals.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { animal: animal })
      }
    end
  end
end
