Condio::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "home/index"
  get "home/minor"
  get 'products_json', to: 'products#index_json', :defaults => { :format => 'json' }
  get 'building_messages_json', to: 'building_messages#index_json', defaults: { format: 'json'}
  resources :products
  resources :building_messages
  get 'building_locations/dates/:id', to: 'building_locations#dates', as: 'building_locations_dates', defaults: { format: 'json'}
  resources :building_locations, defaults: { format: 'json'}
  get 'reservations/history', defaults: { format: 'json'}
  resources :reservations, defaults: { format: 'json'}
  get 'users/:id/bills', to: 'bills#user_bills', as: 'user_bills', defaults: { format: 'json'}
  resources :users, defaults: { format: 'json'}
  resources :bills, defaults: { format: 'json'}
  resources :devices, defaults: { format: 'json'}
  root to: 'home#index'
end
