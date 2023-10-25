Rails.application.routes.draw do
  devise_for :users
  root to: 'foods#index'
  resources :recipes
  resources :foods
  resources :users

  resources :foods, only: [:index, :show, :new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
