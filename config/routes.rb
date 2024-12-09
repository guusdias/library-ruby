Rails.application.routes.draw do
  root 'books#index'

  resources :books do
    member do
      post 'add_to_cart'
    end
  end

  resources :users
  resources :admins
  resources :orders_mains
  resources :order_products
end