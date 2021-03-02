Rails.application.routes.draw do
  resources :recipes
  get 'static_pages/home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/signup',  to: 'users#new'
  get '/create', to: 'recipes#new'
  get '/index', to: 'recipes#index'
  resources :recipes
  resources :users
  root 'static_pages#home'
end
