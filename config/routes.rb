Rails.application.routes.draw do
  resources :inquiries
  resources :companies
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
