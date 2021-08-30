Rails.application.routes.draw do
  resources :orders
  devise_for :users
  root to: "items#index"

  resources :carts
  resources :users
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
