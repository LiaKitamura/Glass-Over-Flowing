class BeersController < ApplicationController

  def index
    @brews = Beer.all
  end

  def show
    @brew = Beer.find(params[:id])
  end

  def new
    @brew = Beer.new
  end

  def create
    @brew = Beer.new(brew_params)
    if @brew.save
      redirect_to brews_path, notice: 'Beer added'
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def brew_params
    params.require(:beer).permit(:category, :style, :name, :brewed_by, :ABV)
  end
end
