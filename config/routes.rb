Rails.application.routes.draw do
  devise_for :users
  
  # resource :users, only: [:show, :index]: 
  resource :users
  resource :groups
  resource :workhours
  get '/external_workhours/:id', to: 'worhours#external_show', as: 'workhour'




  # get '/patients/:id', to: 'patients#show', as: 'patient'
  # @patient = Patient.find(params[:id])
  # <%= link_to 'Patient Record', patient_path(@patient) %>
end
