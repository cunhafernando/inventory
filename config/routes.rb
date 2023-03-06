Rails.application.routes.draw do
  resources :allocations
  resources :sectors
  resources :suppliers
  get 'suppliers/new'
  get 'suppliers/create'
  resources :equipment
  resources :users
  root 'users#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
end
