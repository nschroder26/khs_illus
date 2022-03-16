Rails.application.routes.draw do
  root 'static_pages#home'
  get '/gallery', to: 'static_pages#gallery'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/', to: 'reviews#create'
  get '/reviews', to: 'static_pages#reviews'
  get '/gallerymod', to: 'static_pages#gallerymod'
  post '/gallerymod', to: 'artworks#create'
  resources :users
  resources :artworks,  only: [:create, :destroy]
  resources :reviews, only: [:create, :destroy]
end
