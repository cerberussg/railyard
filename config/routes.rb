Rails.application.routes.draw do
  get '/dashboard', to: 'application_monitors#dashboard'
  resources :application_monitors, path: 'am'
  resources :subscribers
  root to: 'subscribers#index'

  require "sidekiq/web"
  require 'sidekiq/cron/web'
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    ActiveSupport::SecurityUtils.secure_compare(
      ::Digest::SHA256.hexdigest(username),
      ::Digest::SHA256.hexdigest(ENV["SK_USER"])
    ) &
    ActiveSupport::SecurityUtils.secure_compare(
      ::Digest::SHA256.hexdigest(password),
      ::Digest::SHA256.hexdigest(ENV["SK_PASS"])
    )
  end if Rails.env.production?
  mount Sidekiq::Web, at: "/sidekiq"
end
