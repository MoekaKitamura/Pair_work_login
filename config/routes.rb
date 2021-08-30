Rails.application.routes.draw do
  root "users#new"
  resources :users, only: [:new, :create, :show]

  resources :blogs

  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
end
