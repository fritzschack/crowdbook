Rails.application.routes.draw do
  get 'photos/index'
  get 'photos/show'
  get 'photos/new'
  get 'photos/create'
  get 'photos/edit'
  get 'photos/update'
  get 'photos/destroy'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/create'
  get 'orders/edit'
  get 'orders/update'
  get 'orders/destroy'
  get 'tickets/index'
  get 'tickets/show'
  get 'tickets/new'
  get 'tickets/create'
  get 'tickets/edit'
  get 'tickets/update'
  get 'tickets/destroy'
  get 'ticket_categories/index'
  get 'ticket_categories/show'
  get 'ticket_categories/new'
  get 'ticket_categories/create'
  get 'ticket_categories/edit'
  get 'ticket_categories/update'
  get 'ticket_categories/destroy'
  get 'genres/index'
  get 'genres/show'
  get 'genres/new'
  get 'genres/create'
  get 'genres/edit'
  get 'genres/update'
  get 'genres/destroy'
  get 'musicians/index'
  get 'musicians/show'
  get 'musicians/new'
  get 'musicians/create'
  get 'musicians/edit'
  get 'musicians/update'
  get 'musicians/destroy'
  get 'performances/index'
  get 'performances/show'
  get 'performances/new'
  get 'performances/create'
  get 'performances/edit'
  get 'performances/update'
  get 'performances/destroy'
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/create'
  get 'events/edit'
  get 'events/update'
  get 'events/destroy'
  get 'profiles/my-profile'
  get 'profiles/show'
  devise_for :users
  root to: 'pages#home'
end
