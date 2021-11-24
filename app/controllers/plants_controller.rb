class PlantsController < ApplicationController

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)

    # associate a garden and a plant
    @plant.garden = @garden #fills garden_id

    @plant.save

    redirect_to garden_path(@garden)


  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
