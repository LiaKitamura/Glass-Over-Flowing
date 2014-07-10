Rails.application.routes.draw do
  devise_for :users

  resources :beers do
    resources :favorites, only: [:new, :create, :edit, :update]
  end

  namespace :admin do
    root to: 'base#index', as: :admin_root
    resources :beers
  end

  # Non-Authenticated Users
  root to: 'site#index'

  resources :user, only: [:show, :update, :destroy]

  resources :beers, only: [:index, :show]

end
