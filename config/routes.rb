require 'sidekiq/web'

Rails.application.routes.draw do
  root to: 'home#index'
  resources :quotes
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
 authenticate :user, lambda { |u| u.admin? } do
   mount Sidekiq::Web => '/sidekiq'
end

  resources :notifications, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

end
