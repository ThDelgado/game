Rails.application.routes.draw do
  resources :game_rules
  resources :game_parts
  resources :game_plays
  root  'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
