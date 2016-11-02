Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  patch '/capture', to: 'pokemons#capture'

  patch '/damage', to: 'trainers#damage'

  # need to make routes for the create and new methods in pokemons_controller

  get '/pokemons/new', to: 'pokemons#new'
  post '/pokemons/create', to: 'pokemons#create'
end
