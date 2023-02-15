Rails.application.routes.draw do
  resources :computers
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  resources :users
  get 'authorized', to: 'sessions#page_requires_login'
end
