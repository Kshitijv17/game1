Rails.application.routes.draw do
  get "cats/index"


  root "dashboards#index"
  resources :users
  resources :products
  # resources :orders
  resources :profiles

  resources :users do
    resources :products 
  end
  resources :orders, only: [:create]


end
