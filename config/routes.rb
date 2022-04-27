Rails.application.routes.draw do
  get 'rooms/index'
  devise_for :users
  root 'users#index'
  
  resources :users
  resources :rooms
  
  post 'rooms/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
