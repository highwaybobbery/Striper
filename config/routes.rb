Striper::Application.routes.draw do
  root to: 'bookings#new', via: 'get'
  match '/bookings/', to: 'bookings#new', via: 'get'

  resource :home, only: [:show]
  resources :bookings, only: [:create, :new, :show]
end
