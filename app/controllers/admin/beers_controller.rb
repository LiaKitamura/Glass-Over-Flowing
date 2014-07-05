class Admin::BeersController < AdminController
  before_action :authenticate_user!
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
      flash[:notice] = 'New beer saved'
      redirect_to admin_beers_path
    else
      flash[:alert] = 'There was an error saving new beer'
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
    flash[:notice] = 'Delete successful'
    redirect_to admin_beers_path
  end

  private

  def beer_params
    params.require(:beer).permit(:category, :style, :name, :brewed_by, :ABV)
  end

  def find_beer
    @beer = Beer.find(params[:id])
  end
end
