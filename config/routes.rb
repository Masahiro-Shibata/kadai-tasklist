Rails.application.routes.draw do
  root to: 'tasks#index'
  
  resources :tasks
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:new, :create]
  get 'signup', to: 'users#new'
  
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  #get 'users/new'
  #get 'users/create'
  
end
