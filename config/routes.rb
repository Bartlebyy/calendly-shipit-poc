Rails.application.routes.draw do
  mount Shipit::Engine, at: '/'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
