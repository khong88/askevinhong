Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :advisor_requests, only: %i[new create]
  resources :swag_requests, only: %i[new create]
  resources :writing_requests, only: %i[new create]
  resources :speaking_requests, only: %i[new create]
  resources :coaching_requests, only: %i[new create]
  resources :users
  resources :companies
  resources :inquiries, only: %i[new create]
  ActiveAdmin.routes(self)
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
