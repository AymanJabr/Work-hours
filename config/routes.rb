Rails.application.routes.draw do
  devise_for :users
  
  resources :users, only: [:index, :show]
  resources :groups, only: [:index, :monthly_report, :show, :new, :edit, :update, :create]
  resources :workhours, only: [:index, :show, :edit, :index_external, :new, :create, :update]
  get '/index_external', to: 'workhours#index_external'
  get '/monthly_report', to: 'groups#monthly_report'

  root 'users#show'


end
