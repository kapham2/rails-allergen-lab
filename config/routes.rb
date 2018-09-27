Rails.application.routes.draw do
  # get 'ingredients/index'
  # get 'ingredients/show'
  # get 'users/show'
  # get 'users/destroy'
  # get 'recipes/index'
  # get 'recipes/new'
  resources :ingredients, only: [:index, :show]
  resources :users, only: [:show, :destroy, :new, :create]
  resources :recipes, only: [:index, :new, :create]
  get '/sorted', to: 'recipes#sorted', as: 'sorted_recipe'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
