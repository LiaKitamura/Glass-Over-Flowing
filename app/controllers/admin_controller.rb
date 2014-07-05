class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_user_is_admin

  private

  def ensure_user_is_admin
    redirect_to root_path, alert: 'You are not authorized to do whatever it is you are doing!' unless current_user && current_user.admin?
  end
end
