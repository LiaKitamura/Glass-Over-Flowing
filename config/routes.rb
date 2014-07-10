Rails.application.routes.draw do
  devise_for :users

  # resources :beers do
  #   resources :favorites, only: [:new, :create, :edit, :update]
  # end

  namespace :admin do
    root to: 'base#index', as: :admin_root
    resources :beers
  end

  # Non-Authenticated Users
  root to: 'site#index'

  resources :user, only: [:show, :update, :destroy]

  resources :beers, only: [:index, :show]

  resources :online_brews, path: 'b', only: [:index] do
    collection do
      get '/beer/:id', to: 'online_brews#show_beer', as: :show_beer
    end
  end

end
