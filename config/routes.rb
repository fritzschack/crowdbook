Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :profiles, only: :show

  get "/my_profile", to: "profiles#my_profile", as: "my_profile"

  resources :campaigns
  get "/new_ticket_category", to: "campaigns#new_ticket_category", as: "new_ticket_category"

  resources :orders, only: [:show, :new, :create, :edit, :update]
end
