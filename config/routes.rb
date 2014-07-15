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

  # resources :categories, only: [:index, :show] do
  #   get '/styles/:id', to: 'styles#index'
  # end

  # resources :online_brews, path: 'b', only: [:index] do
  #   collection do
  #     get '/beer/:id', to: 'online_brews#show_beer', as: :show_beer
  #   end
  # end

  # resources :beers, only: [:index, :show] do
  #   collection do
  #     get '/categories', to: 'beers#index'
  #   end
  # end

end
