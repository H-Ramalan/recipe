Rails.application.routes.draw do
  devise_for :users
  root to: 'foods#index'
  resources :recipes do
    resources :recipe_foods, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :users
  resources :public_recipes, only: [:index]
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
