Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'

  resources :profiles, only: [:show] do
    resources :orders, only: [:index]
  end

  get "/my_profile", to: "profiles#my_profile", as: "my_profile"

  resources :campaigns
  get "/new_ticket_category", to: "campaigns#new_ticket_category", as: "new_ticket_category"
  
  devise_for :users, controllers: { registrations: "registrations" }

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end