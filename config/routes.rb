Rails.application.routes.draw do
  get 'pokemons/capture'
  patch '/capture', to: 'pokemons#capture'
  get 'pokemons/damage'
  patch '/damage', to: 'pokemons#damage'
  get '/new', to: 'pokemons#new'
  post '/new', to: 'pokemons#new'

  devise_for :trainers
  root to: "home#index"
  resources :trainers

end
