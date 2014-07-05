Rails.application.routes.draw do
  devise_for :users
  root 'site#index'
  resources :beers, only: [:index, :show]

  namespace :admin do
    get '/' => 'base#index'
    resources :beers
  end
end
