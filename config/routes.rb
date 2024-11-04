Rails.application.routes.draw do


  root "dashboards#index"
  resources :users
  resources :products

  resources :users do
    resources :products
  end

end
