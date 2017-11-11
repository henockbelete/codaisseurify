Rails.application.routes.draw do

  get 'songs/index'
  get 'artists/show'
  get 'artists/new'
  get 'artists/delete'

  get 'artists/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "artists#index"
  root "songs#index"

  get "artists" => "artists#index"
  get "songs" => "songs#index"
  get "artists/:id" => "artists#show", as: :artist











end
