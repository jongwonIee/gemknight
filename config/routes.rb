Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jewels

  post 'jewels/new_game'

  root 'jewels#index'
end
