Rails.application.routes.draw do
  devise_for :users

  # Non-Authenticated Users
  root to: 'site#index'

  resources :user, only: [:show, :update, :destroy]

  namespace :admin do
    root to: 'base#index', as: :admin_root
    resources :beers
  end

  resources :beers, only: [:index, :show] do
    collection do
      get '/categories', to: 'beers#index'
    end
  end

  resources :online_brews, path: 'b', only: [:index] do
    collection do
      get '/beer/:id', to: 'online_brews#show_beer', as: :show_beer
    end
  end

end
