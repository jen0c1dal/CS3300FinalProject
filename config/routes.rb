Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do get '/users/sign_out' => 'devise/sessions#destroy' end
  # Defines the root ("/") path route
  # root "articles#index" 
  root "weapons#index"
  resources :weapons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
