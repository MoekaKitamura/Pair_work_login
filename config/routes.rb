Rails.application.routes.draw do
  root "users#new"
  resources :users, only: [:new, :create, :show]
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
