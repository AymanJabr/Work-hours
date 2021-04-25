Rails.application.routes.draw do
  devise_for :users
  
  # resource :users, only: [:show, :index] 
  resources :users
  resources :groups
  resources :workhours
  get '/index_external', to: 'workhours#index_external'
  get '/monthly_report', to: 'groups#monthly_report'

  root 'users#show'


end
