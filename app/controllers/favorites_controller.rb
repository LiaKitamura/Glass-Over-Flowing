class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_beer

  def create
    if Favorite.find_or_create_by(favorable: @brew, user: current_user)
      redirect_to @brew, notice: 'Beer has been favorited'
    else
      redirect_to @brew, alert: 'Something went wrong...*sad panda*'
    end
  end

  def destroy
    Favorite.where(favorable_id: @brew.id, user_id: current_user.id).first.destroy
    redirect_to user_path(current_user.id), alert: 'Beer is no longer in favorites'
  end

  private

  # def favorite_params
  #   params.require(:favorite).permit!
  # end

  def set_beer
    @brew = Beer.friendly.find(params[:beer_id] || params[:id])
  end
end
