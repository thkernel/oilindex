Rails.application.routes.draw do
  resources :statements
  resources :statement_types
  resources :agents
  resources :sale_points
  resources :products
  resources :product_categories
  resources :profiles
  devise_for :users
  resources :permissions
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
