Rails.application.routes.draw do
root 'physician#index'

resources :patients
resources :physician do
  resources :appointments
end
end