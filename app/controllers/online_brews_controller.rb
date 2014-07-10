class OnlineBrewsController < ApplicationController

  def show_beer
    @beer = BreweryAPI.beers.find(params[:id])
  end
end
