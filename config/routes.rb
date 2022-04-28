Rails.application.routes.draw do
  get 'rooms/index'
  devise_for :users
  root 'users#index'
  post 'rooms/new'
  get 'users/profile', to: 'users#profile' 
  
  resources :users
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
