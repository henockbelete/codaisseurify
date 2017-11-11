Rails.application.routes.draw do

  root "artists#index"
  root "songs#index"

  get 'songs/index'
  get 'artists/show'
  get 'artists/new'
  get 'artists/delete'

  get 'artists/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "artists" => "artists#index"
  get "songs" => "songs#index"
  get "artists/:id" => "artists#show", as: :artist
  delete "artists/:id" => "artists#destroy"







end
