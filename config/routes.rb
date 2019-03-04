Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events

  resources :orders, only: [:new, :create, :edit, :update]

  resources :profiles, only: [:show]
  get "/my_profile", to: "profiles#my_profile", as: "my_profile"

end
