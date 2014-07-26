class BeersController < ApplicationController

  def show
    @brew = Beer.friendly.find(params[:id])
  end

end
