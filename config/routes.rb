Rails.application.routes.draw do
  get 'pages/home'
  resources :posts
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'home#index'
  get 'user/show'
  get 'blogpostverfassen/index'
  get 'einstellungen/index'
  get 'home/index'
  get 'login/index'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  #get 'delete', to: 'users#destroy', as: 'delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
