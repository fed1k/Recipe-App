# frozen_string_literal: true

Rails.application.routes.draw do
  root 'foods#index'
  # devise_for :users
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
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
