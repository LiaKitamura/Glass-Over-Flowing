Rails.application.routes.draw do
  devise_for :users
  root 'site#index'
  namespace :admin do
    get '/' => 'base#index'
  end
end
