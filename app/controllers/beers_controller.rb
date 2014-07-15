class BeersController < ApplicationController

  def index
    @brews = Beer.all
  end

  def show
    @brew = Beer.find(params[:id])
  end

  private

  def brew_params
    params.require(:beer).permit(:category, :style, :name, :brewed_by, :ABV)
  end
end
