Rails.application.routes.draw do
  resources :subscribers
  root to: 'subscribers#index'
end
