Rails.application.routes.draw do
  get 'am/new', to: 'application_monitors#new'
  get '/dashboard', to: 'application_monitors#dashboard'
  resources :subscribers
  root to: 'subscribers#index'
end
