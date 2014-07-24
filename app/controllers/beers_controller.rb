class BeersController < ApplicationController

  def index
    @brews = Beer.all
  end

  def show
    @brew = Beer.friendly.find(params[:id])
  end

  def abv
    # find @brews abv where its not nil
    
  end

  private

  def brew_params
    params.require(:beer).permit(:category, :style, :name, :brewed_by, :abv)
  end
end
