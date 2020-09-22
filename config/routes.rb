Rails.application.routes.draw do
  get 'ingredients/index'
  get 'ingredients/show'
  get 'smoothies/index'
  get 'smoothies/show'
  resources :ingredients
  resources :smoothies
end
