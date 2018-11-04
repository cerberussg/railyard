Rails.application.routes.draw do
  get '/dashboard', to: 'application_monitors#dashboard'
  resources :application_monitors, path: 'am'
  resources :subscribers
  root to: 'subscribers#index'
end
