Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'password', :confirmation => 'verification', :unlock => 'unblock', :registration => 'signup', :sign_up => 'new' }

  get   'login' => 'users/login'

  devise_scope :user do
    get   'login',          to: 'devise/sessions#new'
    get   'users/login',    to: 'devise/sessions#new'
    get   'logout',         to: 'devise/sessions#destroy'
    get   'signup',         to: 'devise/registrations#new'
    get   'password',       to: 'devise/passwords#new'
    match 'users/secret',   to: "devise/passwords#create",      via: :post
    match 'sessions/user',  to: 'devise/sessions#create',       via: :post
    match 'users/signup',   to: 'devise/registrations#create',  via: :post
    match 'users/signup',   to: 'devise/registrations#create',  via: :post
  end


  #resources :users
  resources :sessions

  # Authenticated Users:
  authenticated :user do
    root to: "users#show", as: :authenticated_root
  end

  resources :sessions do
    resources :favorites, only: [:new, :create, :edit, :update]
  end

  resources :beers do
    resources :favorites, only: [:new, :create, :edit, :update]
  end

  namespace :admin do
    root to: 'base#index', as: :admin_root
    resources :beers
  end

  # Non-Authenticated Users
  root to: 'site#index'

  get '', to: 'users#show', as: 'user'

  resources :beers, only: [:index, :show]



end
