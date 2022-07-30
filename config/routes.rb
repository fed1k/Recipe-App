# frozen_string_literal: true

Rails.application.routes.draw do
  root 'recipes#public'
  # devise_for :users
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users
  resources :recipes do
    resources :recipe_foods
  end
  resources :foods
  get '/public_recipes' => 'recipes#public'
  get '/general_shopping_list' => 'foods#shopping'
  # get '/recipes/:id/add_ingredient' => 'recipes#ingredient'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
