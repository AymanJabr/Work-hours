Rails.application.routes.draw do
  devise_for :users
  
  # resource :users, only: [:show, :index] 
  resources :users
  resources :groups
  resources :workhours
  get '/index_external', to: 'workhours#index_external'

  root 'users#show'


end
