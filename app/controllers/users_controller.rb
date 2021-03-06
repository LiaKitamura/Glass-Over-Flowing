class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path, notice: 'User updated.'
    else
      redirect_to user_path, alert: 'Unable to update user.'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_path, alert: 'User deleted.'
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
