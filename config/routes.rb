Rails.application.routes.draw do
  resources :speaking_requests
  resources :coaching_requests
  resources :users
  resources :inquiries
  resources :companies
  ActiveAdmin.routes(self)
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
