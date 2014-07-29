class SiteController < ApplicationController

  def index
    @beers = Beer.where.not(abv: nil).order('abv DESC').limit(5)
    @favorites = Favorite.where(:favorable_type => "Beer").group_by { |f| f.favorable_id }
    @sorted_favorites = @favorites.sort_by { |beer, fav| fav.count }.reverse
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
