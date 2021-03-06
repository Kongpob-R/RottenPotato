Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  get  'auth/:provider/callback' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
  get  'auth/failure' => 'sessions#failure'
  get  'auth/facebook', :as => 'login'
  
  get '/movies/search_tmdb' => 'movies#search_tmdb'
  post '/movies/createfromtmdb' => 'movies#create_from_tmdb', :as => 'createfromtmdb'
  
  resources :movies do
    resources :reviews
  end
  root :to => redirect('/movies')
end
