Rails.application.routes.draw do
  devise_for :users

  # Non-Authenticated Users
  root to: 'site#index'

  resources :user, only: [:show, :update, :destroy]

  namespace :admin do
    root to: 'base#index', as: :admin_root
    resources :categories
    resources :styles
    resources :beers
  end

  resources :categories, only: [:index, :show]
  resources :styles, only: [:index, :show] 
  resources :beers, only: [:index, :show]
end
