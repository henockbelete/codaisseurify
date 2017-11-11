Rails.application.routes.draw do

  root "artists#index"
  root "songs#index"

  resources :artists
  resources :songs

  # get 'artists/index'
  # get 'artists/show'
  # get 'artists/delete'
  #
  # get 'songs/index'
  # get 'songs/show'
  # get 'songs/new'
  # get 'songs/delete'
  #
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #
  # get "artists" => "artists#index"
  # get "songs" => "songs#index"
  # get "artists/:id" => "artists#show", as: :artist
  # get "songs/:id" => "songs#show", as: :song
  #
  # post "songs" => "songs#create"
  #
  # delete "artists/:id" => "artists#destroy"
  # delete "songs/:id" => "songs#destroy"


end
