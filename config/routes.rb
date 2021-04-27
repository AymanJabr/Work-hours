Rails.application.routes.draw do
  devise_for :users
  
  resources :users
  resources :groups
  resources :workhours
  get '/index_external', to: 'workhours#index_external'
  get '/monthly_report', to: 'groups#monthly_report'

  root 'users#show'


end
