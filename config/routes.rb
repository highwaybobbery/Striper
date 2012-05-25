Striper::Application.routes.draw do
  root to: 'home#show'

  resource :home, only: [:show]
  resources :bookings, only: [:create, :new, :show]
end
