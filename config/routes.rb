Rails.application.routes.draw do
  
  get 'static_pages/home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  get  '/signup',  to: 'users#new'
  get '/create', to: 'recipes#new'
  get '/index', to: 'recipes#index'
  resources :recipes
  resources :users
  root 'sessions#new'
end
