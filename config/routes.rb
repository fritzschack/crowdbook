Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events

  resources :orders, only: [:new, :create, :edit, :update]
end
