# config/routes.rb
Rails.application.routes.draw do
  resources :users
  resources :hospitals
  resources :test_centers
  resources :appointments
  post '/login', to: 'authentication#login'
  # ...
end
