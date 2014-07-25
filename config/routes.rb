Rails.application.routes.draw do
  devise_for :users

  # Non-Authenticated Users
  root to: 'site#index'

  resources :users, only: [:show, :update, :destroy]

  namespace :admin do
    root to: 'base#index', as: :admin_root
    resources :categories
    resources :styles
    resources :beers
  end

  resources :categories, only: [:index, :show]
  resources :styles, only: [:index, :show]
  resources :beers, only: [:index, :show]
  resources :favorites, only: [:create, :destroy]

  get '/search' => 'search_results#index'
end
