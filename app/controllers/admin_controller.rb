class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_user_is_admin


  private

  def ensure_user_is_admin
    redirect_to root_path unless current_user && current_user.admin?
  end
end
