Rails.application.routes.draw do
  get 'artists/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "artists#index"


  get "artists" => "artists#index"

  
end
