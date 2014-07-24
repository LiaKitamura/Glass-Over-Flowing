class SiteController < ApplicationController

  def index
    @beers = Beer.where.not(abv: nil).order('abv DESC').limit(5)
    @most_fav = Favorite.where.not(favorable_id: nil).order('').limit(5)
  end

  def show
    @user = User.find(params[:id])
    if @user == current_user
      redirect_to user_path
    else
      redirect_to root_path
    end
  end
end
