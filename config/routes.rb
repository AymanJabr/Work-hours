Rails.application.routes.draw do
  devise_for :users
  
  # resource :users, only: [:show, :index] 
  resources :users
  resources :groups
  resources :workhours
  get '/index_external', to: 'workhours#index_external'

  root 'groups#index'


  # get '/patients/:id', to: 'patients#show', as: 'patient'
  # @patient = Patient.find(params[:id])
  # <%= link_to 'Patient Record', patient_path(@patient) %>
end
