Rails.application.routes.draw do
  get 'site/index'

  root 'site#index'
  resources :beers
end
