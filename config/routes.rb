Condio::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "home/index"
  get "home/minor"
  resources :products
  resources :building_messages
  get 'building_locations/dates/:id', to: 'building_locations#dates', as: 'building_locations_dates'
  resources :building_locations
  get 'reservations/history'
  resources :reservations
  get 'users/:id/bills', to: 'bills#user_bills', as: 'user_bills'
  resources :users
  resources :bills
  resources :devices
  root to: 'home#index'
  end
