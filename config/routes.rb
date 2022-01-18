Rails.application.routes.draw do
  root 'static_pages#home'
  get '/gallery', to: 'static_pages#gallery'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
end
