class SiteController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user == current_user
      redirect_to user_path
    else
      redirect_to root_path
    end
  end
end
