Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  get "/users/:id", to: "users#show", as: "user"


  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index] do
    resources :treatments


end
