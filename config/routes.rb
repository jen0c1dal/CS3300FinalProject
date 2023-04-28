Rails.application.routes.draw do

  devise_for :users
  # Defines the root ("/") path route
  # root "articles#index" 
  root "weapons#index"
  resources :weapons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
