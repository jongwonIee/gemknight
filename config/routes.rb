Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jewels
  resources :users
  resources :sessions
  get 'logout', to: 'sessions#destroy', as: 'logout'

  post 'jewels/new_game'

  root 'jewels#index'
end
