Rails.application.routes.draw do
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'home', to: 'pages#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end