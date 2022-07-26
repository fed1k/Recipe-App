# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  resources :recipe_foods
  resources :recipes
  resources :foods
  resources :users
  get '/public_recipes' => 'recipes#public'
  get '/general_shopping_list' => 'foods#shopping'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
