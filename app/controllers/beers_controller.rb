class BeersController < ApplicationController

  def show
    @brew = Beer.friendly.find(params[:id])
  end

  private

  def brew_params
    params.require(:beer).permit(:category, :style, :name, :brewed_by, :abv)
  end

end
