Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :profiles, only: :show
  get "/my_profile", to: "profiles#my_profile", as: "my_profile"

  resources :campaigns
  get "/new_performance_field", to: "campaigns#new_performance_field", as: "new_performance_field"

  resources :orders, only: [:new, :create, :edit, :update]
end
