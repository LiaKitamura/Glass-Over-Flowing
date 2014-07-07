class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def new
    @context = context
    @favorite = @context.favorites.new
  end

  def create
    @context = context
    @favorite = @context.favorites.new(favorite_params)

    if @favorite.save
      redirect_to context_url(context), notice: "The favorite has been successfully created."
    end
  end

  def edit
    @context = context
    @favorite = context.favorites.find(params[:id])
  end

  def update
    @context = context
    @favorite = @context.favorites.find(params[:id])
    if @favorite.update_attributes(favorite_params)
      redirect_to context_url(context), notice: "The favorite has been updated"
    end
  end

private

  def favorite_params
    params.require(:favorite).permit!
  end

  def context
    if params[:user_id]
      id = params[:user_id]
      User.find(params[:user_id])
    else
      id = params[:beer_id]
      Beer.find(params[:beer_id])
    end
  end

  def context_url(context)
    if User === context
      user_path(context)
    else
      beer_path(context)
    end
  end
end
