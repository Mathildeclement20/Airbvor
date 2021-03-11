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
    if params["specie"] == "10"
      # @animals = Animal.all
      redirect_to animals_path
    else
      specie = Animal.species[params["specie"].to_i]
      @animals = Animal.where(specie: specie)
      set_markers
      render :index
    end
  end

  private

  def set_markers
    @markers = @animals.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { animal: animal }),
        image_url: helpers.asset_url('https://res.cloudinary.com/df310vkui/image/upload/v1615469621/PICTO/Logo_symbol_airbvor_Plan_de_travail_1_copie_2_r1jhba.png')
      }
    end
  end
end
