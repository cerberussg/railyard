Rails.application.routes.draw do
  get 'monitors/dashboard'
  resources :subscribers
  root to: 'subscribers#index'
end
