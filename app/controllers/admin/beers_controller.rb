class Admin::BeersController < AdminController
  before_action :find_beer, only: [:show, :edit, :update, :destroy]

  def index
    @beers = Beer.all
  end

  def show
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to admin_beers_path, notice: 'Beer added'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @beer.update_attributes(beer_params)
      redirect_to admin_beer_path
    else
      render :edit
    end
  end

  def destroy
    @beer.destroy
    redirect_to admin_beers_path
  end

  private

  def find_beer
    @beer = Beer.find(params[:id])
  end

  def beer_params
    params.require(:beer).permit(:category, :style, :name, :brewed_by, :ABV)
  end
end
