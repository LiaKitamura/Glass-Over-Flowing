class Admin::BeersController < AdminController
  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to admin_beers_path
    else
      render :new
    end
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    if @beer.update_attributes(beer_params)
      redirect_to admin_beer_path
    else
      render :edit
    end
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy
    redirect_to admin_beers_path
  end

  private

  def beer_params
    params.require(:beer).permit(:category, :style, :name, :brewed_by, :ABV)
  end
end
