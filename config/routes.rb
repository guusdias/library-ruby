Rails.application.routes.draw do
  root 'books#index'

  resources :books
  resources :users
  resources :admins
  resources :orders_mains
  resources :order_products
end