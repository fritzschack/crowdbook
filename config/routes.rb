Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  # devise_for :users
  root to: 'pages#home'

  resources :profiles, only: [:show] do
    resources :orders, only: [:index]
  end

  get "/my_profile", to: "profiles#my_profile", as: "my_profile"

  resources :campaigns, except: [:show]
  get "campaigns/:id", to: "campaigns#verify_private_campaign", as: "verify_private_campaign"
  post "campaigns/:id", to: "campaigns#check_codeword", as: "check_codeword"
  get "/new_ticket_category", to: "campaigns#new_ticket_category", as: "new_ticket_category"

  devise_for :users, controllers: { registrations: "registrations" }

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  resources :tickets, only: [:show, :update, :edit]

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
end
