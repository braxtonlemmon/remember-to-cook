Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  
  resources :recipes
  resources :recipe_ingredients
  resources :ingredients

end
