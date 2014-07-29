class BeersController < ApplicationController

  def show
    @brew = Beer.friendly.find(params[:id])
  end

<<<<<<< HEAD
=======
  private

  def brew_params
    params.require(:beer).permit(:category, :style, :name, :brewed_by, :abv)
  end
>>>>>>> 5926a894cf9040c199f7fdb773095d9f8207e8c9
end
